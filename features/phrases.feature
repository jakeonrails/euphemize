Feature: Working with phrases
  In order to reword a phrase to make better sense in its context
  As a person who wants to write better
  I want to add phrases to the site so others can suggest euphemisms

  Scenario: Create a phrase for euphemizing
    Given I am logged in
    And I am on the new phrase page
    When I fill in "phrase_phrase" with "kicked the bucket"
    And press "Save"
    Then I should see "Share"
    And I should see "kicked the bucket"

