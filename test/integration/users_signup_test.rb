require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_select 'div#error_explanation'
    assert_select 'div.alert-danger'
  end
  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: {name: "Example User", email: "example@gmail.com",
                                        password: "password", password_confirmation: "password"}}
    end
    follow_redirect!
    assert_template 'users/show'
  end
  
end
