require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "abbreviation should be present" do
    project = Project.new
    project.name = "name"

    assert_equal false, project.save, "Saved the post without abbreviation"
  end

  test "name should be present" do
    project = Project.new
    project.abbreviation = "ABB"

    assert_equal false, project.save, "Saved the post without name"
  end

  test "abbreviation should be unique" do
    same_abbreviation = 'AB'
    p1 = Project.new(:name => "name 1", :abbreviation => same_abbreviation)
    p2 = Project.new(:name => "name 2", :abbreviation => same_abbreviation)

    assert true, p1.valid?
    assert p1.save

    assert_equal false, p2.valid?
    assert_equal false, p2.save
  end

  test "name should be unique" do
    same_name = 'NAME'
    p1 = Project.new(:name => same_name, :abbreviation => 'A')
    p2 = Project.new(:name => same_name, :abbreviation => 'B')

    assert p1.valid?
    assert p1.save
    
    assert_equal false, p2.valid?
    assert_equal false, p2.save
  end

  test "valid project should be saved" do
    assert_difference "Project.count" do
      project = Project.new

      project.name = "Name"
      project.abbreviation = "ABB"

      assert_equal true, project.save
    end
  end
end
