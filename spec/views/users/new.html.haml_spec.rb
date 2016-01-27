require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :user_name => "MyString",
      :email => "MyString",
      :position => "MyString",
      :api_key => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_user_name[name=?]", "user[user_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_position[name=?]", "user[position]"

      assert_select "input#user_api_key[name=?]", "user[api_key]"
    end
  end
end
