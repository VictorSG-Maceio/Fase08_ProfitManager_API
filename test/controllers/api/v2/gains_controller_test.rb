require "test_helper"

class Api::V2::GainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v2_gains_index_url
    assert_response :success
  end
end
