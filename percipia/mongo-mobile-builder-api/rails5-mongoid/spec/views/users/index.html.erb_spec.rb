require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :companyName => "Company Name",
        :companyLocation => "Company Location",
        :companyPassword => "Company Password",
        :companyFreqIP => "Company Freq Ip",
        :companyFreqKey => "Company Freq Key",
        :companyParallaxIP => "Company Parallax Ip",
        :companyParallaxKey => "Company Parallax Key",
        :jsonKey => "Json Key",
        :woeID => "Woe",
        :domain => "Domain",
        :title => "Title"
      ),
      User.create!(
        :companyName => "Company Name",
        :companyLocation => "Company Location",
        :companyPassword => "Company Password",
        :companyFreqIP => "Company Freq Ip",
        :companyFreqKey => "Company Freq Key",
        :companyParallaxIP => "Company Parallax Ip",
        :companyParallaxKey => "Company Parallax Key",
        :jsonKey => "Json Key",
        :woeID => "Woe",
        :domain => "Domain",
        :title => "Title"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Location".to_s, :count => 2
    assert_select "tr>td", :text => "Company Password".to_s, :count => 2
    assert_select "tr>td", :text => "Company Freq Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Company Freq Key".to_s, :count => 2
    assert_select "tr>td", :text => "Company Parallax Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Company Parallax Key".to_s, :count => 2
    assert_select "tr>td", :text => "Json Key".to_s, :count => 2
    assert_select "tr>td", :text => "Woe".to_s, :count => 2
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
