require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "issue should have a project assigned" do
    i = Issue.new

    assert_equal false, i.valid?
  end
end
