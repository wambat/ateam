Feature: Commander can create team
  In order to add a sequel movie
  As a supermutant commander
  I want to create a team
  
  Scenario:
    When I'm logged in as a user with 'Commander' role
    And navigated to 'admin_teams_path'
    And hit "New Team"
    And enter "Supercows" in a team_name field
    And I press "Create Team" button
    Then I should be redirected to 'admin_teams_path' page
    And I should see "Supercows" there
