Given(/^I am on the index page$/) do
   visit root_path
end

When(/^I click on the 'Login' link$/) do 
  click_link('Login')
end

Then(/^I should be on the 'Login' page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end