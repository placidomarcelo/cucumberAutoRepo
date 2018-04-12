@Important
Feature: Create account of Facebook
  As a user you need to open facebook home page and do the validations

  @smoke
  Scenario: Validate First Name field1
    Given User need to be on Facebook login page
    When User enters user "David" first name
    Then User checks user "David" first name is present
    Then close browser

   @smoke @Regression
  Scenario: Validate create user multiple fields2
    Given User need to be on Facebook login page
    When User enters user "Ryan" first name
    And User enters user "Jack" surname
    Then User checks user "Jack" first name is present
    Then User Mobile field should be blank
    Then close browser

     Scenario: Validate First Name field3
    Given User need to be on Facebook login page
    When User enters user "David" first name
    Then User checks user "David" first name is present
    Then close browser
    
    @Regression
     Scenario: Validate First Name field4
    Given User need to be on Facebook login page
    When User enters user "David" first name
    Then User checks user "David" first name is present
    Then close browser
    
    @Smoke
     Scenario: Validate First Name field5
    Given User need to be on Facebook login page
    When User enters user "David" first name
    Then User checks user "David" first name is present
    Then close browser
    
    