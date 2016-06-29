class RobotWorld
  attr_reader :world
  def initialize(world)
    @world = world
  end

  def create(robot)
    world.transaction do
      world['robots'] ||= []
      world['population'] ||= 0
      world['population'] += 1
      world['robots'] << new_robot(world['population'], robot[:name], robot[:city], robot[:state],
                                   robot[:birthdate], robot[:date_hired], robot[:department], "https://robohash.org/#{world['population']}")
    end
  end

  Robot = Struct.new(:id, :name, :city, :state,
                     :birthdate,
                     :date_hired, :department, :avatar)

  def new_robot(id, name, city, state, birthday, date_hired, department, avatar)
    Robot.new(id, name, city, state, birthday, date_hired, department, avatar)
  end

  def all
    world.transaction do
      world['robots'] ||= []
    end
  end

  def find(robot_id)
    all.find{|robot| robot.id == robot_id}
  end

  def update(robot_id, robot_data)
    world.transaction do
      targeted_robot = world['robots'].find{|robot| robot.id == robot_id}
      targeted_robot[:name] = robot_data[:name]
      targeted_robot[:city] = robot_data[:city]
      targeted_robot[:state] = robot_data[:state]
      targeted_robot[:birthdate] = robot_data[:birthdate]
      targeted_robot[:date_hired] = robot_data[:date_hired]
      targeted_robot[:department] = robot_data[:department]
      targeted_robot[:avatar] = robot_data[:avatar] unless robot_data[:avatar].empty?
    end
  end

  def destroy(robot_id)
    world.transaction do
      world['robots'].delete_if do |robot|
        robot.id == robot_id
      end
    end
  end

  def delete_all
    world.transaction do
      world['robots'].clear
      world['population'] = 0
    end
  end
end
