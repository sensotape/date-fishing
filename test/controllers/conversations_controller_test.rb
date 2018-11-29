require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get inbox" do
    get conversations_inbox_url
    assert_response :success
  end

end
