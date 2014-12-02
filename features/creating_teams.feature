Feature: Commander can create team
  In order to add a sequel movie
  As a supermutant commander
  I want to create a team
  
  Scenario: Just a team
    When I'm logged in as a user with 'Commander' role
    And navigated to 'admin_teams_path'
    And hit "New Team"
    And enter "Supercows" in a team_name field
    And I press "Create Team" button
    Then I should be redirected to 'admin_teams_path' page
    And I should see "Supercows" there

  Scenario: A team linked to tasks and mutants
    When I'm logged in as a user with 'Commander' role
    When I have created "Task 1, Task 2" task
    When I have created "Mutant 1, Mutant 2" mutant
    And navigated to 'admin_teams_path'
    And hit "New Team"
    And enter "Supercows" in a team_name field
    And I select "Task 1" in a Tasks field
    And I select "Mutant 1" in a Mutants field
    And I press "Create Team" button
    Then I should be redirected to 'admin_teams_path' page
    And I should see "Supercows" there
    And I should see "Task 1" there
    And I should not see "Task 2" there
    And I should see "Mutant 1" there
    And I should not see "Mutant 2" there
