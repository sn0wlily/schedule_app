=begin
name: tsuchiya
date: 2020/6/1
purpose: logon_path test
=end

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

end
