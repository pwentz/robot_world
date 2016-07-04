require_relative "../test_helper"
class UserCanReadRobotStatsHiringTest < FeatureTest

  def test_user_can_see_hiring_stats
    visit "/robots/new"

    #2011 - 3
    fill_in "robot[name]", with:Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    click_button "Create!"
    click_link "Create new robot"

    #2014 - 6
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2014"
    click_button "Create!"
    click_link "Create new robot"


    #2009 - 7
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2009"
    click_button "Create!"
    click_link "Create new robot"

    #2010 - 8
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[name]", with: Faker::Name.name
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2010"
    click_button "Create!"
    save_and_open_page
   

    click_link "Back to dashboard"
    save_and_open_page

    within("#hires_by_year") do
      assert page.has_content?("2011: 3 hires")
      assert page.has_content?("2014: 6 hires")
      assert page.has_content?("2009: 7 hires")
      assert page.has_content?("2010: 8 hires")
    end
  end
end
