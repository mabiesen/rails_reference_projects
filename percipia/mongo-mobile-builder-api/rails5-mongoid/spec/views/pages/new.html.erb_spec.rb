require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      :name => "MyString",
      :text => "MyText",
      :type => ""
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input[name=?]", "page[name]"

      assert_select "textarea[name=?]", "page[text]"

      assert_select "input[name=?]", "page[type]"
    end
  end
end
