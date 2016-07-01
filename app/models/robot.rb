class Robot
  attr_reader :name, :city, :state,
              :birthdate, :date_hired,
              :department, :avatar

  def initialize(robot_details)
    @name = robot_details["name"]
    @city = robot_details["city"]
    @state = robot_details["state"]
    @birthdate = robot_details["birthdate"]
    @date_hired = robot_details["date_hired"]
    @department = robot_details["department"]
    @avatar = robot_details["avatar"]
  end

  def attributes
    instance_variables.reduce({}) do |result, attribute|
      result.merge!(attribute[1..-1].to_sym => 
                    instance_variable_get(attribute))
    end
  end
end
