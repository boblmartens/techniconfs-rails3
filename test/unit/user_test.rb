require 'test_helper'

class UserTest < ActiveSupport::TestCase

  context "a new visitor" do
    should "be able to create a new user" do
      c = User.all.count
      u = Factory.create(:user)
      assert User.all.count == c+1
    end
      
    should "be allowed to create a user with a hashed password" do
      u = Factory.create(:user)
      assert_not_nil u.hashed_password
    end
  end
  
  context "a registered user" do
    setup do
      @user = Factory.create(:user)
    end
    
    should "be able to login with proper credentials" do
      assert_not_nil User.authenticated?("test@test.com", "1234")
    end
    
    should "not be able to login with the wrong email" do
      assert_nil User.authenticated?("testy@test.com", "1234")
    end
    
    should "not be able to login with wrong password" do
      assert_nil User.authenticated?("test@test.com", "abcd")
    end
    
    should "not be able to login with wrong email and password" do
      assert_nil User.authenticated?("testy@test.com", "abcd")
    end
    
    should "be able to change their password" do
      old = @user.hashed_password
      @user.password = "1234"
      @user.password_confirmation = "1234"
      @user.save!
      assert @user.hashed_password != old
    end
  end

end