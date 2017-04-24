Given(/^I am on the index page$/) do
   visit root_path
end

When(/^I click on the 'Login' link$/) do 
  click_link('Login')
end

Then(/^I should be on the 'Login' page$/) do
  expect(page).to have_content('Login')
end



When(/^I click on 'Feedback' link$/) do
   click_link('FeedBack')
end

Then(/^I should see 'Feedback' page$/) do
  expect(page). to have_content('FeedBack')
end