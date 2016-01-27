require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :user_name => "MyString",
      :email => "MyString",
      :position => "MyString",
      :api_key => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_user_name[name=?]", "user[user_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_position[name=?]", "user[position]"

      assert_select "input#user_api_key[name=?]", "user[api_key]"
    end
  end
end
