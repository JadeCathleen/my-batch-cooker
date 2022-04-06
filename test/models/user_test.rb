require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "invalid if it has no email" do
    user = User.new(username: "Jade", password: "123456")
    user.valid?
    assert_not user.errors[:email].empty?
  end

  test "invalid if it has no password" do
    user = User.new(username: 'Jade')
    user.valid?
    assert_not user.errors[:password].empty?
  end

  test "invalid if the password is shorter than 6 characters" do
    user = User.new(email: "jade@mail.com", password: "123")
    user.valid?
    assert_not user.errors[:password].empty?
  end

  test "invalid if it has no username" do
    user = User.new
    user.valid?
    assert_not user.errors[:username].empty?
  end
end
