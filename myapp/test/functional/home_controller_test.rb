require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "the truth" do
    get :index
    assert_response :success
    assert_equal 2, assigns(:usercount)
  end
end
