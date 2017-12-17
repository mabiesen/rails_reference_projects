require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get grass" do
    get pages_grass_url
    assert_response :success
  end

  test "should get tree" do
    get pages_tree_url
    assert_response :success
  end

  test "should get frog" do
    get pages_frog_url
    assert_response :success
  end

end
