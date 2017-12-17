require 'test_helper'

class TestPageControllerTest < ActionDispatch::IntegrationTest
  test "should get testpage" do
    get test_page_testpage_url
    assert_response :success
  end

end
