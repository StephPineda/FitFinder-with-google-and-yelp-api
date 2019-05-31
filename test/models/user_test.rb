require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(firstname: "Example", lastname: "User", email: "user@example.com", password_digest: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
