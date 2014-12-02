class AddTeamIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :team_id, :reference
  end
end
