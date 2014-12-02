class CreateMutantTeamAssignments < ActiveRecord::Migration
  def change
    create_table :mutant_team_assignments do |t|
      t.references :mutant, index: true
      t.references :team, index: true

      t.timestamps
    end
  end
end
