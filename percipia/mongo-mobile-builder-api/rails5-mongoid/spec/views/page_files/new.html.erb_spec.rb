require 'rails_helper'

RSpec.describe "page_files/new", type: :view do
  before(:each) do
    assign(:page_file, PageFile.new(
      :type => "",
      :name => "MyString",
      :link => "MyString"
    ))
  end

  it "renders new page_file form" do
    render

    assert_select "form[action=?][method=?]", page_files_path, "post" do

      assert_select "input[name=?]", "page_file[type]"

      assert_select "input[name=?]", "page_file[name]"

      assert_select "input[name=?]", "page_file[link]"
    end
  end
end
