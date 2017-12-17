require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Company Location/)
    expect(rendered).to match(/Company Password/)
    expect(rendered).to match(/Company Freq Ip/)
    expect(rendered).to match(/Company Freq Key/)
    expect(rendered).to match(/Company Parallax Ip/)
    expect(rendered).to match(/Company Parallax Key/)
    expect(rendered).to match(/Json Key/)
    expect(rendered).to match(/Woe/)
    expect(rendered).to match(/Domain/)
    expect(rendered).to match(/Title/)
  end
end
