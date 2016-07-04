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
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    click_button("Create!")

    assert_equal "/robots", current_path

    within(".card-block h5") do
      assert page.has_content?("Hector")
    end

    within(".card") do
      assert page.has_css?("img")
    end
  end
end
