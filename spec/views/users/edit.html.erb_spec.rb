require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :uid => "MyString",
      :provide => "MyString",
      :sex => "MyString",
      :avatar => "MyString",
      :country => "MyString",
      :provice => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_uid[name=?]", "user[uid]"

      assert_select "input#user_provide[name=?]", "user[provide]"

      assert_select "input#user_sex[name=?]", "user[sex]"

      assert_select "input#user_avatar[name=?]", "user[avatar]"

      assert_select "input#user_country[name=?]", "user[country]"

      assert_select "input#user_provice[name=?]", "user[provice]"

      assert_select "input#user_city[name=?]", "user[city]"
    end
  end
end
