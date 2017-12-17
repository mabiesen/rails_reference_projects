require 'test_helper'

class GetlinksControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get getlinks_Home_url
    assert_response :success
  end

end
