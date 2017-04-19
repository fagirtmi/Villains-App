Feature: Login using a username and password

   As a user
   So that I can access my profile
   I want to be able to login
Scenario: As a user I want to login from the login page
  Given I am on the index page
  When I click on the 'Login' link
  Then I should be on the 'Login' page