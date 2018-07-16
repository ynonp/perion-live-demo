require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "can create user with name and password" do
    User.create(name: 'ynon', password: 'dmeo')
    u = User.last
    assert_equal 'ynon', u.name
  end

  test "can check passwords" do
    User.create(name: 'ynon', password: 'dmeo')
    u = User.last
    assert u.check_password('dmeo')
  end
end
