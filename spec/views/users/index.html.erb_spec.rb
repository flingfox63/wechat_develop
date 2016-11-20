require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :uid => "Uid",
        :provide => "Provide",
        :sex => "Sex",
        :avatar => "Avatar",
        :country => "Country",
        :provice => "Provice",
        :city => "City"
      ),
      User.create!(
        :name => "Name",
        :uid => "Uid",
        :provide => "Provide",
        :sex => "Sex",
        :avatar => "Avatar",
        :country => "Country",
        :provice => "Provice",
        :city => "City"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Provide".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Provice".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
