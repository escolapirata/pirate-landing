require 'test_helper'


class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  def setup
    name = "exame"
    email = "ces22@email.com"
    User.pre_registration({:name => "exame", :email => "ces22@email.com"}, 'origin')
  end
  
  def test_name
    user = User.last
    assert_equal(user.name, "exame");
  end
  
  def test_email
    user = User.last
    assert_equal(user.email, "ces22@email.com")
  end

  
  # end
end