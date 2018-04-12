Feature: Create account of Facebook
  As a user you need to open facebook home page and do the validations

  #@runthis
  Scenario: Validate First Name field
    Given User need to be on Facebook login page
    When User enters user "David" first name
    Then User checks user "David" first name is present
    

  #@runthis
  Scenario: Validate create user multiple fields
    Given User need to be on Facebook login page
    When User enters user "Ryan" first name
    And User enters user "Jack" surname
    Then User checks user "Jack" first name is present
    Then User Mobile field should be blank
   
