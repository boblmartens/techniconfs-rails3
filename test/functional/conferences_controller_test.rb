require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  context "a visitor" do
    setup do
      @conf = Factory.create(:conference)
    end
    
    should "be able to view all currently created conferences" do
      get :index
      assert_response :success
      assert_not_nil assigns(:conferences)
    end
    
    # should "not be able to add a conference" do
    #   get :new
    #   assert_redirected_to login_path
    # end
  end
end
