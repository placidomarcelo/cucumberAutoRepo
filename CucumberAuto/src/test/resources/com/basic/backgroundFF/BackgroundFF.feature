Feature: Create account of Facebook
  As a user you need to open facebook home page and do the validations
  
  Background: commom login steps
Given User need to be on Facebook login page

  #@runthis
Scenario: Validate First Name field
When User enters user "David" first name
Then User checks user "David" first name is present
Then close browser

  #@runthis
Scenario: Validate create user multiple fields
When User enters user "Ryan" first name
And User enters user "Jack" surname
Then User checks user "Ryan" first name is present
Then User Mobile field should be blank
Then close browser
