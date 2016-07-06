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

    within(".card") do
      assert page.has_css?(".card-block h5")
      assert page.has_css?("img")
    end
    
    within(".card-block h5") do
      assert page.has_content?("Bender")
    end

    within(".card") do
      assert page.has_css?("img")
    end

    click_button "Delete"

    within("#robots") do
      refute page.has_content?("Bender")
      refute page.has_css?(".card")

      refute page.has_css?("img")
      refute page.has_css?("a img")
    end

  end
end
