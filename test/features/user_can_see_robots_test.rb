require_relative '../test_helper'
class UserSeesRobotTest < FeatureTest
  def test_user_see_robot
    robot_one = robot_world.create(
     :name => "Harold"
    )

    #as a user,
    #when I visit the robot index,
    # then I should see all of my robots
    visit '/robots'

    within(".media h4") do
      assert page.has_content?("Harold")
    end
  end

  def test_user_can_create_robot_and_view_name
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

    click_link("Hector")
  end

  def test_user_can_create_robot_and_visit_page
    visit '/'
    click_link("Create new robot")
    
    assert_equal "/robots/new", current_path

    fill_in "robot[name]", with: "Hector"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[birthdate][month]", with: "05"
    fill_in "robot[birthdate][day]", with: "22"
    fill_in "robot[birthdate][year]", with: "3040"
    click_button("Create!")

    click_link("Hector")

    assert_equal "/robots/1", current_path

    within(".table") do
      assert page.has_content?("Hector")
      assert page.has_content?("Robotica")
      assert page.has_content?("05/22/3040")
    end
  end
end