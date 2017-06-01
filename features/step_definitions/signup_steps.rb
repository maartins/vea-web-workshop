Given(/^I am on signup page$/) do
  @tests.signup_tests.load_signup_page
end

When(/^I submit signup details$/) do
  @tests.signup_tests.submit_signup_details
end

When(/^I submit signup details with no again password$/) do
  @tests.signup_tests.submit_signup_details_no_again_password
end

When(/^I submit signup details with no passwords$/) do
  @tests.signup_tests.submit_signup_details_no_passwords
end

When(/^I submit signup details with no email$/) do
  @tests.signup_tests.submit_signup_details_no_email
end
