require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  context "a visitor" do
    setup do
      @conf = Factory.create(:user)
    end
    
    should "be able to view all registered users" do
      get :index
      assert_response :success
      assert_not_nil assigns(:users)
    end
    
    # should "not be able to add a conference" do
    #   get :new
    #   assert_redirected_to login_path
    # end
  end
end
