require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :companyName => "MyString",
      :companyLocation => "MyString",
      :companyPassword => "MyString",
      :companyFreqIP => "MyString",
      :companyFreqKey => "MyString",
      :companyParallaxIP => "MyString",
      :companyParallaxKey => "MyString",
      :jsonKey => "MyString",
      :woeID => "MyString",
      :domain => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[companyName]"

      assert_select "input[name=?]", "user[companyLocation]"

      assert_select "input[name=?]", "user[companyPassword]"

      assert_select "input[name=?]", "user[companyFreqIP]"

      assert_select "input[name=?]", "user[companyFreqKey]"

      assert_select "input[name=?]", "user[companyParallaxIP]"

      assert_select "input[name=?]", "user[companyParallaxKey]"

      assert_select "input[name=?]", "user[jsonKey]"

      assert_select "input[name=?]", "user[woeID]"

      assert_select "input[name=?]", "user[domain]"

      assert_select "input[name=?]", "user[title]"
    end
  end
end
