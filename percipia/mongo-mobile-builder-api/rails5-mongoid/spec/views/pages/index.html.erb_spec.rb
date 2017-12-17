require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :name => "Name",
        :text => "MyText",
        :type => "Type"
      ),
      Page.create!(
        :name => "Name",
        :text => "MyText",
        :type => "Type"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
