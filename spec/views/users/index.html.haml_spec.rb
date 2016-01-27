require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :user_name => "User Name",
        :email => "Email",
        :position => "Position",
        :api_key => "Api Key"
      ),
      User.create!(
        :name => "Name",
        :user_name => "User Name",
        :email => "Email",
        :position => "Position",
        :api_key => "Api Key"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Api Key".to_s, :count => 2
  end
end
