require_relative '../test_helper'

class RobotWorldTest < Minitest::Test
  include TestHelpers

  def current_robot_id
    robot_world.all.first["id"]
  end

  def test_robot_world_creates_robots
    robot_world.create("name" => "Cornelius", "city" => "Robotica",
                        "state" => "RW", "birthdate" => {"month": "05", "day": "24", "year": "3056"},
                        "date_hired" => {"month": "09", "day": "29", "year": "4087"},
                        "department" => "Mission Control")

    assert robot_world.all.any?{|robo_data| robo_data["name"] == "Cornelius"}
  end

  def test_robot_world_finds_and_returns_robots
    robot_world.create("name" => "Cornelius", "city" => "Robotica",
                        "state" => "RW", "birthdate" => {"month": "05", "day": "24", "year": "3056"},
                        "date_hired" => {"month": "09", "day": "29", "year": "4087"},
                        "department" => "Mission Control")

    new_robot = robot_world.find(current_robot_id)

    assert_instance_of Robot, new_robot
    assert_equal "Cornelius", new_robot.name
  end

  def test_robot_world_updates_robot_data
    robot_world.create("name" => "Cornelius", "city" => "Robotica",
                        "state" => "RW", "birthdate" => {"month": "05", "day": "24", "year": "3056"},
                        "date_hired" => {"month": "09", "day": "29", "year": "4087"},
                        "department" => "Mission Control")

    robot = robot_world.find(current_robot_id)

    assert_equal "Cornelius", robot.name
    assert_equal "Robotica", robot.city

    edited_robot_data = {"name" => "Edwin", "city" => "Electropolis"}

    robot_world.update(current_robot_id, edited_robot_data)

    edited_robot = robot_world.find(current_robot_id)

    assert_equal "Edwin", edited_robot.name
    assert_equal "Electropolis", edited_robot.city
    assert_equal "Mission Control", edited_robot.department
  end

  def test_robot_world_can_delete_robots
    robot_world.create("name" => "Cornelius", "city" => "Robotica",
                        "state" => "RW", "birthdate" => {"month": "05", "day": "24", "year": "3056"},
                        "date_hired" => {"month": "09", "day": "29", "year": "4087"},
                        "department" => "Mission Control")

    robot = robot_world.find(current_robot_id)

    assert_instance_of Robot, robot

    robot_world.destroy(current_robot_id)

    assert robot_world.all.empty?

  end


end
