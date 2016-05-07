require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get nav" do
  	get :home
  	assert_response :success
  	assert_select "title", "nav"
  	assert_select "title", "home"
  	assert_select "a[href=?]", new_user_registration_path
    	assert_select "a[href=?]", new_user_session_path  
  end
  test "should feature signout capability and have Category Roots" do
  	get :home
  	assert_response :success
  	assert_select "a[href=?]", signout_path if user_signed_in?
   	assert(@categories.count, 7) if user_signed_in?
  end 

end 