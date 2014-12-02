Feature: Commander can add mutants
  In order to keep track of his lousy minions 
  As a supermutant commander
  I want to register mutant
  
  Scenario:
    When I'm logged in as a user with 'Commander' role
    And navigated to 'admin_mutants_path'
    And hit "New Mutant"
    And enter "Supergodzilla" in a mutant_name field
    And I press "Create Mutant" button
    Then I should be redirected to 'admin_mutants_path' page
    And I should see "Supergodzilla" there
