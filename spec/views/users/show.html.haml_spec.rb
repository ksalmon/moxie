require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :user_name => "User Name",
      :email => "Email",
      :position => "Position",
      :api_key => "Api Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Api Key/)
  end
end
