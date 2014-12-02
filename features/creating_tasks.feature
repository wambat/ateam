Feature: Commander can create tasks
  In order to save the world
  As a supermutant commander
  I want to create a task
  
  Scenario:
    When I'm logged in as a user with 'Commander' role
    And navigated to 'admin_tasks_path'
    And hit "New Task"
    And enter "Save the world" in a task_name field
    And I press "Create Task" button
    Then I should be redirected to 'admin_tasks_path' page
    And I should see "Save the world" there
