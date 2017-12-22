require 'test_helper'

class ReceiverControllerTest < ActionDispatch::IntegrationTest
  test "should get receive" do
    get receiver_receive_url
    assert_response :success
  end

end
