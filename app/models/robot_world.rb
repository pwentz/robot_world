class RobotWorld
  attr_reader :database
  def initialize(database)
    @database = database
  end

  def create(robot)
      robo = {:name => robot[:name], :city => robot[:city], 
                                   :state => robot[:state], :birthdate => format_date(robot[:birthdate]),
                                   :date_hired => format_date(robot[:date_hired]), 
                                   :department => robot[:department],
                                   :avatar => "https://robohash.org/#{rand(100)}"}

      database.execute("INSERT INTO robots (name, city, state, birthdate,
                                          date_hired, department, avatar)
                       VALUES (\"#{robo[:name]}\", \"#{robo[:city]}\", \"#{robo[:state]}\",
                              \"#{robo[:birthdate]}\", \"#{robo[:date_hired]}\",
                              \"#{robo[:department]}\", \"#{robo[:avatar]}\");"
                      )
  end

  def new_robot(robot_details)
    Robot.new(robot_details)
  end

  def format_date(date)
    "#{date[:month]}/#{date[:day]}/#{date[:year]}" unless date.nil?
  end

  def all
    database.execute("SELECT * FROM robots;")
  end

  def find(robot_id)
    robot = new_robot(all.find do |robot| 
      robot["id"] == robot_id
    end.delete_if{|k,v| k.is_a?(Fixnum)})
  end

  def update(robot_id, new_robot_data)
    new_robot_data.each do |robo_data|
      database.execute("UPDATE robots SET
                        \"#{robo_data.first.to_s}\" = ?
                        WHERE id = ?;", robo_data.last, robot_id)
    end
  end

  def destroy(robot_id)
    database.execute("DELETE FROM robots WHERE id=\"#{robot_id}\";")
  end

  def delete_all
    database.execute("DELETE FROM robots;")
  end
end
