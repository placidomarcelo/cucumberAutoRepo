Feature: Create account of Facebook
  As a user you need to open facebook home page and do the validations


  #@runthis
  Scenario: Validate create user multiple fields
    Given User need to be on Facebook login page
    When Enter following data
    |userName	|UserSurname	|Mobile	|
    |Tom			|Hanks				|1234		|
    |Jack 		|Daniel				|5678		|
  
