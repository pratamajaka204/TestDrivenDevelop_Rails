require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest


  test "should get index" do
    # get user_url
    # assert_response :success
    # @user = User.find(params[:id])
    # assert_template :index
  end

  test "should get new" do
    get new_user_url
    assert_response :success
    assert_template :new
  end

  test "show" do

  end

end
