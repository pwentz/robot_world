require_relative "../test_helper"
class UserCanReadRobotStatsDptTest < FeatureTest
  def test_user_see_department_numbers
    visit "/robots/new"

    #RoboPolice - 5
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "RoboPolice"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "RoboPolice"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[state]", with: "EL"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "RoboPolice"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[state]", with: "EL"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "RoboPolice"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[state]", with: "EL"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "RoboPolice"
    click_button "Create!"
    click_link "Create new robot"
    #Librarian - 3
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Librarian"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Librarian"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Librarian"
    click_button "Create!"
    click_link "Create new robot"
    #Trash Compactor - 7
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Create new robot"
    fill_in "robot[city]", with: "Robo City"
    fill_in "robot[state]", with: "CS"
    fill_in "robot[birthdate][month]", with: "01"
    fill_in "robot[birthdate][day]", with: "01"
    fill_in "robot[birthdate][year]", with: "2008"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "01"
    fill_in "robot[date_hired][year]", with: "2011"
    choose "Trash Compactor"
    click_button "Create!"
    click_link "Back to dashboard"

    within(".table") do 
      assert page.has_content?("RoboPolice: 5")
      assert page.has_content?("Librarian: 3")
      assert page.has_content?("Trash Compactor: 7")
    end

    within(".table") do
      assert page.has_content?("Electropolis: 6")
      assert page.has_content?("Robotica: 3")
      assert page.has_content?("Robo City: 6")
    end

    within(".table") do
      assert page.has_content?("RW: 6")
      assert page.has_content?("EL: 3")
      assert page.has_content?("CS: 6")
    end
  end
end