Feature: Click on Login link

   As a user
   So that I can access the login
   I want to be able to click on login link
Scenario: As a user I want to login from the login page
  Given I am on the index page
  When I click on the 'Login' link
  Then I should be on the 'Login' page
  
Scenario: As a user I want to login using a username and password
  Given I am on the index page
  When I click on 'Feedback' link
  Then I should see 'Feedback' page
