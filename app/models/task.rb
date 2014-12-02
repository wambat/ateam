class Task < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  belongs_to :team
  def destroyable?
    team.blank?
  end
end
