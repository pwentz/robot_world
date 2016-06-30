require_relative '../test_helper'

class UserDestroysExistingRobotTest < FeatureTest
  def test_user_can_destroy_existing_robot
    visit '/robots/new'

    fill_in "robot[name]", with: "Bender"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[birthdate][month]", with: "03"
    fill_in "robot[birthdate][day]", with: "11"
    fill_in "robot[birthdate][year]", with: "3045"
    choose "Librarian"
    click_button "Create!"

    within(".media-list") do
      assert page.has_css?(".media h4")
      assert page.has_css?(".media .thumbnail")
    end
    
    within(".media h4") do
      assert page.has_content?("Bender")
    end

    within(".media .thumbnail") do
      assert page.has_css?("img")
    end

    click_button "Delete"

    within(".media-list") do
      refute page.has_content?("Bender")
      refute page.has_css?(".media h4")

      refute page.has_css?("img")
      refute page.has_css?(".media .thumbnail")
    end

  end
end
