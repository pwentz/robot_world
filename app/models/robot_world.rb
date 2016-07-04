require_relative 'statbot'
class RobotWorld
  include StatBot
  attr_reader :database, :robot_ages, 
              :max_hires, :hires_by_year,
              :by_department, :by_city, :by_state
  def initialize(database)
    @database = database
    @robot_ages = {"years" => [], "months" => [], "days" => []}
    @hires_by_year = {}
  end

  def create(robot)
    robo = {:name => robot["name"], :city => robot["city"], 
                                 :state => robot["state"], :birthdate => format_date(robot["birthdate"]),
                                 :date_hired => format_date(robot["date_hired"]), 
                                 :department => robot["department"],
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
    unless date.nil?
      "#{date["month"].to_s.rjust(2,"0")}/#{date["day"].to_s.rjust(2,"0")}/#{date["year"].to_s.rjust(4,"0")}"
    end
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
    database.execute("UPDATE robots 
                     SET name=? 
                     WHERE id=?;", [new_robot_data["name"], robot_id]) unless new_robot_data["name"].nil?
    database.execute("UPDATE robots 
                     SET city=? 
                     WHERE id=?;", [new_robot_data["city"], robot_id]) unless new_robot_data["city"].nil?
    database.execute("UPDATE robots 
                     SET state=? 
                     WHERE id=?;", [new_robot_data["state"], robot_id]) unless new_robot_data["state"].nil?
    database.execute("UPDATE robots 
                     SET birthdate=? 
                     WHERE id=?;", [format_date(new_robot_data["birthdate"]), robot_id]) unless new_robot_data["birthdate"].nil?
    database.execute("UPDATE robots 
                     SET date_hired=? 
                     WHERE id=?;", [format_date(new_robot_data["date_hired"]), robot_id]) unless new_robot_data["date_hired"].nil?
    database.execute("UPDATE robots 
                     SET department=? 
                     WHERE id=?;", [new_robot_data["department"], robot_id]) unless new_robot_data["department"].nil?
    database.execute("UPDATE robots 
                     SET avatar=? 
                     WHERE id=?;", [new_robot_data["avatar"], robot_id])
  end

  def destroy(robot_id)
    database.execute("DELETE FROM robots WHERE id=\"#{robot_id}\";")
  end

  def delete_all
    database.execute("DELETE FROM robots;")
  end
end

