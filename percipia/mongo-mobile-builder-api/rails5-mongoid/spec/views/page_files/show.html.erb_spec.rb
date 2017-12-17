require 'rails_helper'

RSpec.describe "page_files/show", type: :view do
  before(:each) do
    @page_file = assign(:page_file, PageFile.create!(
      :type => "Type",
      :name => "Name",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
  end
end
