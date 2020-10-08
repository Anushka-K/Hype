require 'test_helper'

class PropTest < ActiveSupport::TestCase
    
    def setup
        @user = User.new(name:"ABCD", email:"apple@gb.com")
        @prop = @user.props.build(content: "Lorem ipsum")
    end

    test "should be valid" do
        assert_not @prop.valid?
    end

    test "user id should be present" do
        @prop.user_id = nil
        assert_not @prop.valid?
    end
    
    test "content should be present" do
        @prop.content = " "
        assert_not @prop.valid?
    end
end