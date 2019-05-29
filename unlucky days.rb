require 'date'
def unlucky_days(year)
fri_counter = 0
year_start = Time.local(year)
year_end = Time.local(year, 12, 31)
while year_end >= year_start
  if year_end.strftime("%A") == "Friday" && year_end.strftime("%d") == "13"
   fri_counter += 1
  end
  year_end -= 86400
  end
  fri_counter
end

Test.describe("Basic Tests") do
Test.assert_equals(unlucky_days(2819), 2, "should be: 2")
Test.assert_equals(unlucky_days(2792), 2, "should be: 2")
Test.assert_equals(unlucky_days(2723), 2, "should be: 2")
Test.assert_equals(unlucky_days(1909), 1, "should be: 1")
Test.assert_equals(unlucky_days(1812), 2, "should be: 2")
Test.assert_equals(unlucky_days(1618), 2, "should be: 2")
Test.assert_equals(unlucky_days(2132), 1, "should be: 1")
Test.assert_equals(unlucky_days(2065), 3, "should be: 3")
end