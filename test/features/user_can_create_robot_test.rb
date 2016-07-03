require_relative '../test_helper'
class UserCreatesRobotTest < FeatureTest
  def find_robot_id
    robot_world.all.first["id"]
  end

  def test_user_creates_robot
    visit '/'
    click_link("Create new robot")
    
    assert_equal "/robots/new", current_path

    fill_in "robot[name]", with: "Hector"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[birthdate][month]", with: "05"
    fill_in "robot[birthdate][day]", with: "22"
    fill_in "robot[birthdate][year]", with: "3040"
    click_button("Create!")

    assert_equal "/robots", current_path

    within(".media h4") do
      assert page.has_content?("Hector")
    end

    within(".thumbnail") do
      assert page.has_css?("img")
    end
  end
end
