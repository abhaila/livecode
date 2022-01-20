require 'date'

def days_until_xmas(someday = Date.today)
  # define the date for xmas
  xmas =  Date.new(someday.year, 12, 25)
  # change the date to xmas to next year if someday is after xmas this year
  if someday > xmas
    xmas = xmas.next_year
  end
  # subtract the xmas date minus someday date
  no_of_days = xmas - someday
  # convert the date class to integers
  return no_of_days.to_i
end

# some tests to check whether the method is functioning how it is supposed to
puts days_until_xmas(Date.new(2022,12,25)) == 0
puts days_until_xmas(Date.new(2022,12,26)) == 364

