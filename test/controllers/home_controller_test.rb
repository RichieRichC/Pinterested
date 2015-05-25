require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get indexlove" do
    get :indexlove
    assert_response :success
  end

end
