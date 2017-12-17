require 'rails_helper'

RSpec.describe "page_files/edit", type: :view do
  before(:each) do
    @page_file = assign(:page_file, PageFile.create!(
      :type => "",
      :name => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit page_file form" do
    render

    assert_select "form[action=?][method=?]", page_file_path(@page_file), "post" do

      assert_select "input[name=?]", "page_file[type]"

      assert_select "input[name=?]", "page_file[name]"

      assert_select "input[name=?]", "page_file[link]"
    end
  end
end
