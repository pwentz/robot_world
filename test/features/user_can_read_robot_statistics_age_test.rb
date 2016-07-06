require_relative "../test_helper"
class UserCanReadRobotStatsAgeTest < FeatureTest
  def find_robot_id
    robot_world.all.first["id"]
  end

  def test_user_see_average_age
    visit "/robots/new"

    fill_in "robot[birthdate][month]", with: "05"
    fill_in "robot[birthdate][day]", with: "18"
    fill_in "robot[birthdate][year]", with: "1992"
    #age = 24y~1.5m
    click_button "Create!"

    click_link "Create new robot"
    fill_in "robot[birthdate][month]", with: "02"
    fill_in "robot[birthdate][day]", with: "03"
    fill_in "robot[birthdate][year]", with: "1980"
    #age = 36y5m
    click_button "Create!"
    click_link "Back to dashboard"
    #avg_age = (24.125 + 36.416) / 2 = 30.27083 or 30yrs 3 months

    within ".table" do
      assert page.has_content?("30 years")
      assert page.has_content?("3 months")
    end
  end
end
