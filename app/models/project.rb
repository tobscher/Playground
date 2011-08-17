class Project < ActiveRecord::Base
  validates_presence_of   :name, :abbreviation
  validates_uniqueness_of :name, :abbreviation

  has_many :issues
end
