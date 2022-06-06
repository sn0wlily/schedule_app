=begin
name: tsuchiya
date: 2020/7/6
purpose: title test
=end

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "task suporter"
    assert_equal full_title("Help"), "Help | task suporter"
  end
end