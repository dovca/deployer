require 'test_helper'

class WebhookControllerTest < ActionDispatch::IntegrationTest
  test "should get handle" do
    get webhook_handle_url
    assert_response :success
  end

end
