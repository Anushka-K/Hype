require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | Hype"
  end

  test "should get signin" do
    get signin_path
    assert_response :success
    assert_select "title", "Sign In | Hype"
  end
  test "should get signup" do
    get signup_path 
    assert_response :success
    assert_select "title", "Sign Up | Hype"
  end
  test "should get addprops" do
    get addprops_path
    assert_response :success
    assert_select "title", "Add Props | Hype"
  end
  test "should get about" do
    get root_path
    assert_response :success
    assert_select "title", "Hype"
  end
  
  test "should get manageprops" do
    get manageprops_path
    assert_response :success
    assert_select "title", "Manage Props | Hype"
  end
  
end
