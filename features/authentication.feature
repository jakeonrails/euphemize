Feature: Authentication
  In order to protect my stuff
  As a user
  I want my account to be password protected

  Scenario: Unauthenticated user can see a link to login
    Given I am not logged in
    When I go to the home page
    Then I should see "Sign In"
    And I should not see "Sign Out"
    And I should see "Sign Up"

  Scenario: Authenticated user cannot see a link to login
    Given I am logged in
    When I go to the home page
    Then I should not see "Sign In"
    And I should see "Sign Out"
    And I should not see "Sign Up"

  Scenario: User creates an account
  	Given there are no users
  	When I go to the sign up page
  	And I fill in "user_email" with "user@website.com"
  	And I fill in "user_password" with "password"
  	And I fill in "user_password_confirmation" with "password"
  	And I press "Sign up"
  	Then I should see "Welcome"
    And I should see "Create a new phrase"