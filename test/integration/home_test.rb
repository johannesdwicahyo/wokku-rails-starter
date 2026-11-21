require "test_helper"

class HomeTest < ActionDispatch::IntegrationTest
  test "the home page answers" do
    get root_path
    assert_response :success
    assert_select "h1", /running on Wokku/
  end
end
