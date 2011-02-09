Feature: Authentication
  In order to protect my stuff
  As a user
  I want my account to be password protected

  Scenario: User creates an account
  	Given there are no users
  	When I go to the sign up page
  	And I fill in "user_email" with "user@website.com"
  	And I fill in "user_password" with "password"
  	And I fill in "user_password_confirmation" with "password"
  	And I press "Sign up"
  	Then I should see "Welcome"
  
