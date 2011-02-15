Given /^there are no users$/ do
  User.delete_all
end

Given /^I am logged in$/ do
  user = Factory.create(:user)
  visit new_user_session_path
  fill_in "user_email", :with => user.email
  fill_in "user_password", :with => user.password
  click_button "Sign in"
end

Given /^I am not logged in$/ do
  visit destroy_user_session_path
end