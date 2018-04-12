Feature: Create account of Facebook
  As a user you need to open facebook home page and do the validations

  #@runthis
  Scenario: Validate First Name field
    Given User need to be on Facebook login page
    When User enters user first name
    Then User checks user first name is present
    Then close browser

  #@runthis
  Scenario: Validate create user multiple fields
    Given User need to be on Facebook page
    When User enters user first name
    And User enters user surname
    Then User checks first name is present
    Then User Mobile field should be blank
    Then close browser
