Given(/^I'm logged in as a user with 'Commander' role$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I'm not logged in$/) do
  page.has_content?('Login')
end
