class Project < ActiveRecord::Base
  validates_presence_of   :name, :abbreviation
  validates_uniqueness_of :name, :abbreviation, :case_sensitive => false

  has_many :issues
end
