=begin
name: tsuchiya
date: 2020/6/1
purpose: sign_up test
=end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

end
