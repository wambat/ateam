Feature: Commander can create tasks
  In order to save the world
  As a supermutant commander
  I want to create a task
  
  Scenario: Just a task
    When I'm logged in as a user with 'Commander' role
    And navigated to 'admin_tasks_path'
    And hit "New Task"
    And enter "Save the world" in a task_name field
    And I press "Create Task" button
    Then I should be redirected to 'admin_tasks_path' page
    And I should see "Save the world" there

  Scenario: A task with team selected
    When I'm logged in as a user with 'Commander' role
    When I have created "Team 1, Team 2" team
    And navigated to 'admin_tasks_path'
    And hit "New Task"
    And enter "Save the world" in a task_name field
    And I select "Team 1" in a Team field
    And I press "Create Task" button
    Then I should be redirected to 'admin_tasks_path' page
    And I should see "Save the world" there
    And I should see "Team 1" there
    And I should not see "Team 2" there
