class Mutant < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :mutant_team_assignments, dependent: :destroy
  has_many :teams, through: :mutant_team_assignments
  def destroyable?
    teams.count==0
  end
end
