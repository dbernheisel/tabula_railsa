require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
