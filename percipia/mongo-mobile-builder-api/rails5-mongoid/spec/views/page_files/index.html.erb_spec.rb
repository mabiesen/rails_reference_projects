require 'rails_helper'

RSpec.describe "page_files/index", type: :view do
  before(:each) do
    assign(:page_files, [
      PageFile.create!(
        :type => "Type",
        :name => "Name",
        :link => "Link"
      ),
      PageFile.create!(
        :type => "Type",
        :name => "Name",
        :link => "Link"
      )
    ])
  end

  it "renders a list of page_files" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
