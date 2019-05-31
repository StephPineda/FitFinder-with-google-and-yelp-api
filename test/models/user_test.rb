require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(firstname: "Example", lastname: "User", email: "user@example.com", password_digest: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.firstname = "     "
    assert_not @user.valid?
  end

  test "last name should be present" do
    @user.lastname = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
   @user.email = "     "
   assert_not @user.valid?
 end
end
