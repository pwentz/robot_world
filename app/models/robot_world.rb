class RobotWorld
  attr_reader :database
  def initialize(database)
    @database = database
  end

  def create(robot)
      robo = new_robot(:name => robot[:name], :city => robot[:city], 
                                   :state => robot[:state], :birthdate => format_date(robot[:birthdate]),
                                   :date_hired => format_date(robot[:date_hired]), 
                                   :department => robot[:department],
                                   :avatar => "https://robohash.org/#{rand(100)}")

      database.execute("INSERT INTO robots (name, city, state, birthdate,
                                          date_hired, department, avatar)
                       VALUES (\"#{robo.name}\", \"#{robo.city}\", \"#{robo.state}\",
                              \"#{robo.birthdate}\", \"#{robo.date_hired}\",
                              \"#{robo.department}\", \"#{robo.avatar}\");"
                      )
  end

  def new_robot(robot_details)
    Robot.new(robot_details)
  end

  def format_date(date)
    "#{date[:month]}/#{date[:day]}/#{date[:year]}"
  end

  def all
    database.execute("SELECT * FROM robots;")
  end

  def find(robot_id)
    all.find do |robot| 
      robot["id"] == robot_id
    end.delete_if{|k,v| k.is_a?(Fixnum)}
  end

  def update(robot_id, new_robot_data)
  end

  def destroy(robot_id)
    #STILL NEEDS SQLITE3 FUNCTIONALITY
    database.transaction do
      database['robots'].delete_if do |robot|
        robot.id == robot_id
      end
    end
  end

  def delete_all
    #STILL NEEDS SQLITE3 FUNCTIONALITY
    database.transaction do
      database['robots'].clear
      database['population'] = 0
    end
  end
end
