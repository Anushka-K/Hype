require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Hype"
  end

  test "should get signin" do
    get static_pages_signin_url 
    assert_response :success
    assert_select "title", "Sign In | Hype"
  end
  test "should get signup" do
    get static_pages_signup_url 
    assert_response :success
    assert_select "title", "Sign Up | Hype"
  end
  test "should get addprops" do
    get static_pages_addprops_url
    assert_response :success
    assert_select "title", "Add Props | Hype"
  end
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "Hype"
  end
  
  test "should get manageprops" do
    get static_pages_manageprops_url
    assert_response :success
    assert_select "title", "Manage Props | Hype"
  end
  
end
