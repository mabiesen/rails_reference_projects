require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :name => "MyString",
      :text => "MyText",
      :type => ""
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input[name=?]", "page[name]"

      assert_select "textarea[name=?]", "page[text]"

      assert_select "input[name=?]", "page[type]"
    end
  end
end
