class Team < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :mutant_team_assignments, dependent: :destroy
  has_many :mutants, through: :mutant_team_assignments
  has_many :tasks
  def destroyable?
    true #mutants.count==0 and tasks.count==0
  end
  scope :unlinked_or_for_task, ->(r) do 
    joins('LEFT OUTER JOIN tasks ON tasks.team_id = teams.id').
      select('teams.*').
      group('teams.id').
      having('count(tasks.id) = 0 or tasks.id = ?', r.id)
  end
end
