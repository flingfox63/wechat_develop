require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :uid => "Uid",
      :provide => "Provide",
      :sex => "Sex",
      :avatar => "Avatar",
      :country => "Country",
      :provice => "Provice",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Provide/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Provice/)
    expect(rendered).to match(/City/)
  end
end
