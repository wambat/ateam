Feature: Commander can login newerly created system 
  In order to maintain security 
  As a system owner 
  I want to be authenticated to perform actions 
  
  Scenario:
    Given 'supercommander@supercommandershq.com:supercowsrocks' user exists with roles 'admin'
    When navigated to 'root_path'
    And I hit 'Login'  
    And I enter 'supercommander@supercommandershq.com' in user_email field 
    And enter 'supercowsrocks' in user_password field 
    And I press "Sign in" button
    Then I should be redirected to 'admin_root_path' page 
    And I should see "Welcome, commander!" there
