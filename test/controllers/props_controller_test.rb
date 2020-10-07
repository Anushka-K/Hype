require 'test_helper'

class PropsControllerTest < ActionDispatch::IntegrationTest
  test "should get content:string" do
    get props_content:string_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get props_user_id:integer_url
    assert_response :success
  end

  test "should get star:integer" do
    get props_star:integer_url
    assert_response :success
  end

end
