require_relative "../test_helper"

class RobotTest < Minitest::Test
  include TestHelpers
  def setup
    @robot_attributes = {"name" => "Gerald",
                      "city" => "Robotica",
                      "state" => "OW",
                      "birthdate" => "03/23/4303",
                      "date_hired" => "02/19/4506",
                      "department" => "Trash Compactor"}
    @robot = Robot.new(@robot_attributes)
  end

  def test_robot_is_robot
    assert_instance_of Robot, @robot
  end

  def test_robot_knows_name
    assert_equal "Gerald", @robot.name
  end

  def test_robot_knows_city
    assert_equal "Robotica", @robot.city
  end

  def test_robot_knows_name
    assert_equal "OW", @robot.state
  end

  def test_robot_knows_birthday
    assert_equal "03/23/4303", @robot.birthdate
  end

  def test_robot_knows_date_hired
    assert_equal "02/19/4506", @robot.date_hired
  end

  def test_robot_knows_department
    assert_equal "Trash Compactor", @robot.department
  end

  def test_robot_knows_attributes
    assert_equal @robot_attributes, @robot.attributes
  end

end
