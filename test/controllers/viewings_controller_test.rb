require "test_helper"

class ViewingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get viewings_new_url
    assert_response :success
  end
end
