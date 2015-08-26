require 'test_helper'

class ClubRoleControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
