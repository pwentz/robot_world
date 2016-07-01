require_relative '../test_helper'

class UserEditsExistingRobotTest < FeatureTest
  def find_current_id
    robot_world.all.first["id"]
  end

  def test_user_can_edit_all_existing_info
    visit '/robots/new'

    fill_in "robot[name]", with: "AWESOME-O"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "EL"
    fill_in "robot[birthdate][month]", with: "09"
    fill_in "robot[birthdate][day]", with: "24"
    fill_in "robot[birthdate][year]", with: "3050"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "29"
    fill_in "robot[date_hired][year]", with: "4060"
    choose "Librarian"
    click_button "Create!"

    click_link "AWESOME-O"

    assert "/robots/#{find_current_id}", current_path
    
    within(".table") do
      assert page.has_content?("AWESOME-O")
      assert page.has_content?("Electropolis")
      assert page.has_content?("EL")
      assert page.has_content?("09/24/3050")
      assert page.has_content?("01/29/4060")
      assert page.has_content?("Librarian")
    end

    click_link "Back to Robots!"

    click_link "Edit"

    fill_in "robot[name]", with: "Bender"
    fill_in "robot[city]", with: "Robotica"
    fill_in "robot[state]", with: "RW"
    fill_in "robot[birthdate][month]", with: "10"
    fill_in "robot[birthdate][day]", with: "31"
    fill_in "robot[birthdate][year]", with: "3234"
    fill_in "robot[date_hired][month]", with: "05"
    fill_in "robot[date_hired][day]", with: "21"
    fill_in "robot[date_hired][year]", with: "4723"
    choose "RoboPolice"
    click_button "Edit"

    assert "/robots/#{find_current_id}", current_path

    within (".table") do
      assert page.has_content?("Bender")
      refute page.has_content?("AWESOME-O")

      assert page.has_content?("Robotica")
      refute page.has_content?("Electropolis")

      assert page.has_content?("RW")
      refute page.has_content?("EL")

      assert page.has_content?("10/31/3234")
      refute page.has_content?("9/24/3050")

      assert page.has_content?("05/21/4723")
      refute page.has_content?("01/29/4060")

      assert page.has_content?("RoboPolice")
      refute page.has_content?("Librarian")
    end
  end

  def test_user_can_edit_select_features
    visit '/robots/new'

    fill_in "robot[name]", with: "AWESOME-O"
    fill_in "robot[city]", with: "Electropolis"
    fill_in "robot[state]", with: "EL"
    fill_in "robot[birthdate][month]", with: "09"
    fill_in "robot[birthdate][day]", with: "24"
    fill_in "robot[birthdate][year]", with: "3050"
    fill_in "robot[date_hired][month]", with: "01"
    fill_in "robot[date_hired][day]", with: "29"
    fill_in "robot[date_hired][year]", with: "4060"
    choose "Librarian"
    click_button "Create!"

    click_link "Edit"

    fill_in "robot[name]", with: "Bender"
    fill_in "robot[birthdate][day]", with: "02"
    choose "Trash Compactor"
    click_button "Edit"

    within(".table") do
      assert page.has_content?("Bender")
      refute page.has_content?("AWESOME-O")

      assert page.has_content?("Electropolis")
      assert page.has_content?("EL")

      assert page.has_content?("09/02/3050")
      refute page.has_content?("09/24/3050")

      assert page.has_content?("01/29/4060")

      assert page.has_content?("Trash Compactor")
      refute page.has_content?("Librarian")
    end
  end
end
