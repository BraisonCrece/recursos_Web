require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cheetsheets" do
    get pages_cheetsheets_url
    assert_response :success
  end

  test "should get recursos" do
    get pages_recursos_url
    assert_response :success
  end
end
