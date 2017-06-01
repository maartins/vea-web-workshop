Given(/^I am on login page$/) do
  @tests.login_tests.load_login_page
end

When(/^I submit login details$/) do
  @tests.login_tests.submit_login_details
end

When(/^I submit login details with no password$/) do
  @tests.login_tests.submit_login_details_no_password
end

When(/^I submit login details with no email$/) do
  @tests.login_tests.submit_login_details_no_email
end