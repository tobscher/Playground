class Issue < ActiveRecord::Base
  belongs_to :project

  validates_presence_of   :title, :description, :project

  def combined_name
    p = Project.find project_id

    "#{p.abbreviation}-#{id}"
  end
end