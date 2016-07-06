module StatBot 

  def calculate_statistics
    calculate_avg_ages
    calculate_robots_hired_by_year
    @max_hires = hires_by_year.max_by(&:last).last + 1 unless hires_by_year.empty?
    @by_department = robots_by_department
    @by_city = robots_by_city
    @by_state = robots_by_state
  end

  def calculate_avg_ages
    unless all.empty?
      all.each{|robo_data| find_age(robo_data["birthdate"])}
      avg_age_in_years = robot_ages["years"].reduce(:+) / robot_ages["years"].count
      avg_remaining_months = robot_ages["months"].reduce(:+) / robot_ages["months"].count
      avg_remaining_days = robot_ages["days"].reduce(:+) / robot_ages["days"].count
      store_averages(avg_age_in_years, avg_remaining_months, avg_remaining_days)
    end
  end

  def store_averages(avg_age_in_years, avg_remaining_months, avg_remaining_days)
    robot_ages.merge!("years" => avg_age_in_years,
                      "months" => avg_remaining_months,
                      "days" => avg_remaining_days)
  end

  def find_age(birthdate)
    year = birthdate.split("/").last.to_i
    month = birthdate.split("/").first.to_i
    day = birthdate.split("/")[1].to_i
    format_birthdate(year, month, day) unless year.zero? || month.zero? || day.zero?
  end

  def format_birthdate(year, month, day)
    year = 2016 if year > 2016
    birthday = Date.new(year.to_i, month.to_i, day.to_i)
    find_year(birthday)
  end

  def find_year(birthday)
    age = DateTime.now - birthday
    calculate_and_store_age(age / 365.0)
  end

  def calculate_and_store_age(exact_age_in_years)
    months_remaining = (exact_age_in_years - exact_age_in_years.to_i) * 12
    month_frac = months_remaining - months_remaining.to_i
    # Avg age calculated from a 30 day month period, causing unwanted, 
    # although slight, variation. Change if given time.
    days_remaining = month_frac * 30
    robot_ages.merge!("years" => exact_age_in_years.to_i, 
                       "months" => months_remaining.to_i,
                       "days" => days_remaining.to_i) do |key, old_data, new_data|
                         old_data << new_data
                       end
  end

  def calculate_robots_hired_by_year
    all.reduce(hires_by_year) do |result, robo_data|
      year_hired = robo_data["date_hired"].split("/").last.to_i
      result.merge!(year_hired => 1) do |year, old_hirees, new_hirees|
        old_hirees + new_hirees
      end
    end
  end

  def robots_by_department
    all.reduce({}) do |result, robo_data|
      result.merge!(robo_data["department"] => 1) do |dpt, old_robots, new_robots|
        old_robots + new_robots
      end
    end
  end

  def robots_by_city
    all.reduce({}) do |result, robo_data|
      result.merge!(robo_data["city"] => 1) do |dpt, old_robots, new_robots|
        old_robots + new_robots
      end
    end
  end

  def robots_by_state
    all.reduce({}) do |result, robo_data|
      result.merge!(robo_data["state"] => 1) do |dpt, old_robots, new_robots|
        old_robots + new_robots
      end
    end
  end
end
