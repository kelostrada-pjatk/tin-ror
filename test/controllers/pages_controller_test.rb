require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get first" do
    get :first
    assert_response :success
  end

  test "should get second" do
    get :second
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
