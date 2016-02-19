require 'test_helper'

class LinItemControllerTest < ActionController::TestCase
  test "should get course:references" do
    get :course:references
    assert_response :success
  end

  test "should get container:belongs_to" do
    get :container:belongs_to
    assert_response :success
  end

end
