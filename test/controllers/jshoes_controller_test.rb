require 'test_helper'

class JshoesControllerTest < ActionController::TestCase
  test "should get shoes_category" do
    get :shoes_category
    assert_response :success
  end

end
