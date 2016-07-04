require_relative '../test_helper'
class StatBotTest < MiniTest::Test
  include TestHelpers

  def test_calculate_avg_age_in_years
    robot_world.create("birthdate" => {"month" => "01", "day" => "01", "year" => "1994"})
    robot_world.create("birthdate" => {"month" => "02", "day" => "01", "year" => "1978"})
    robot_world.create("birthdate" => {"month" => "03", "day" => "01", "year" => "2003"})
    robot_world.create("birthdate" => {"month" => "04", "day" => "01", "year" => "2011"})
    robot_world.create("birthdate" => {"month" => "05", "day" => "01", "year" => "1998"})
    robot_world.create("birthdate" => {"month" => "06", "day" => "01", "year" => "2008"})

    now = DateTime.now.year
    ages = [(now - 1994), (now - 1978), (now - 2003), 
            (now - 2011), (now - 1998), (now -  2008)]
    compiled_ages = ages.first + ages[1] + ages[2] + ages[3] + ages[4] + ages.last
    avg_age = compiled_ages / ages.count
    robot_world.calculate_avg_ages

    assert_equal avg_age, robot_world.robot_ages["years"]
  end

  def test_calculate_avg_age_in_years
    robot_world.create("birthdate" => {"month" => "01", "day" => "01", "year" => "1994"})
    robot_world.create("birthdate" => {"month" => "02", "day" => "01", "year" => "1978"})
    robot_world.create("birthdate" => {"month" => "03", "day" => "01", "year" => "2003"})
    robot_world.create("birthdate" => {"month" => "04", "day" => "01", "year" => "2011"})
    robot_world.create("birthdate" => {"month" => "05", "day" => "01", "year" => "1998"})
    robot_world.create("birthdate" => {"month" => "06", "day" => "01", "year" => "2008"})

    now = DateTime.now.month
    months = [(now - 1), (now - 2), (now - 3),
            (now - 4), (now - 5), (now - 6)]
    compiled_months = months.first + months[1] + months[2] + months[3] + months[4] + months.last
    avg_remaining_months = compiled_months / months.count
    robot_world.calculate_avg_ages

    assert_equal avg_remaining_months, robot_world.robot_ages["months"]
  end

  def test_calculate_hires_by_year
    3.times do
      robot_world.create("date_hired" => {"month" => "01", "day" => "01", "year" => "2005"})
    end
    7.times do
      robot_world.create("date_hired" => {"month" => "02", "day" => "01", "year" => "2001"})
    end
    2.times do
      robot_world.create("date_hired" => {"month" => "03", "day" => "01", "year" => "2003"})
    end
    6.times do
      robot_world.create("date_hired" => {"month" => "06", "day" => "01", "year" => "2008"})
    end
    4.times do
      robot_world.create("date_hired" => {"month" => "06", "day" => "01", "year" => "2015"})
    end
    robot_world.calculate_robots_hired_by_year
    

    assert_equal 3, robot_world.hires_by_year[2005] 
    assert_equal 7, robot_world.hires_by_year[2001] 
    assert_equal 6, robot_world.hires_by_year[2008] 
    assert_equal 2, robot_world.hires_by_year[2003] 
    assert_equal 4, robot_world.hires_by_year[2015] 
  end

  def test_find_number_of_robots_in_department
    4.times do
      robot_world.create("department" => "Trash Compactor")
    end
    5.times do
      robot_world.create("department" => "Librarian")
    end
    7.times do
      robot_world.create("department" => "RoboPolice")
    end
    robots_in_robopolice = 7
    robots_in_librarian = 5
    robots_in_trash_compacting = 4

    assert_equal robots_in_robopolice, robot_world.robots_by_department["RoboPolice"]
    assert_equal robots_in_librarian, robot_world.robots_by_department["Librarian"]
    assert_equal robots_in_trash_compacting, robot_world.robots_by_department["Trash Compactor"]
  end

  def test_find_number_of_robots_in_city
    6.times do
      robot_world.create("city" => "Electropolis")
    end
    9.times do
      robot_world.create("city" => "Robotica")
    end
    3.times do
      robot_world.create("city" => "Robo City")
    end

    assert_equal 6, robot_world.robots_by_city["Electropolis"]
    assert_equal 9, robot_world.robots_by_city["Robotica"]
    assert_equal 3, robot_world.robots_by_city["Robo City"]
  end

  def test_find_number_of_robots_in_state
    5.times do
      robot_world.create("state" => "RO")
    end
    8.times do
      robot_world.create("state" => "EL")
    end
    2.times do
      robot_world.create("state" => "CS")
    end

    assert_equal 5, robot_world.robots_by_state["RO"]
    assert_equal 8, robot_world.robots_by_state["EL"]
    assert_equal 2, robot_world.robots_by_state["CS"]
  end
end
