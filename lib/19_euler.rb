regular_year  = [31,28,31,30,31,30,31,31,30,31,30,31]
leap_year     = [31,29,31,30,31,30,31,31,30,31,30,31]

monday_counter = 0
start_day = 1 #January 1, 1901 was a Tuesday
(1901..2000).each do |year|
  if year % 4 == 0
    days_in_months = leap_year
  else
    days_in_months = regular_year
  end
  days_in_months.each do |month|
    monday_counter += 1 if start_day == 6
    first_of_next_month = (start_day + (month % 7)) % 7
    start_day = first_of_next_month
  end
end

p monday_counter