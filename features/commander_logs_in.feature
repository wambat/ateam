Feature: Commander can login newerly created system 
  In order to maintain security 
  As a system owner 
  I want to be authenticated to perform actions 
  
  Scenario:
    Given I'm not logged in
    And I hit 'login'  
    When I enter 'supercommander@supercommandershq.com' in email field 
    And enter 'supercowsrocks' in password field 
    And hit "Login"
    Then I should be redirected to dashboard page 
    And I should see "Welcome, commander!" message there
