require "test_helper"

class AdminordersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adminorders_index_url
    assert_response :success
  end

  test "should get show" do
    get adminorders_show_url
    assert_response :success
  end

  test "should get update" do
    get adminorders_update_url
    assert_response :success
  end
end
