require 'test_helper'

class DeploymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get deployments_new_url
    assert_response :success
  end

  test "should get edit" do
    get deployments_edit_url
    assert_response :success
  end

  test "should get create" do
    get deployments_create_url
    assert_response :success
  end

end
