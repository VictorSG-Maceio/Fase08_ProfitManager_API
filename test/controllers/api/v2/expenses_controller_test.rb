require "test_helper"

class Api::V2::ExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v2_expenses_index_url
    assert_response :success
  end
end
