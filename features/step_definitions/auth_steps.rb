When(/^I'm logged in as a user with 'Commander' role$/) do
  steps %Q{
    Given 'supercommander@supercommandershq.com:supercowsrocks' user exists with roles 'admin'
    When navigated to 'root_path'
    And I hit 'Login'  
    And I enter 'supercommander@supercommandershq.com' in user_email field 
    And enter 'supercowsrocks' in user_password field 
    And I press "Sign in" button
    Then I should be redirected to 'admin_root_path' page 
    And I should see "Welcome, commander!" there
}
end

Then(/^I'm not logged in$/) do
  page.has_content?('Login')
end
