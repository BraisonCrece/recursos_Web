require "test_helper"

class MarkdownCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @markdown_code = markdown_codes(:one)
  end

  test "should get index" do
    get markdown_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_markdown_code_url
    assert_response :success
  end

  test "should create markdown_code" do
    assert_difference("MarkdownCode.count") do
      post markdown_codes_url, params: { markdown_code: { content: @markdown_code.content } }
    end

    assert_redirected_to markdown_code_url(MarkdownCode.last)
  end

  test "should show markdown_code" do
    get markdown_code_url(@markdown_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_markdown_code_url(@markdown_code)
    assert_response :success
  end

  test "should update markdown_code" do
    patch markdown_code_url(@markdown_code), params: { markdown_code: { content: @markdown_code.content } }
    assert_redirected_to markdown_code_url(@markdown_code)
  end

  test "should destroy markdown_code" do
    assert_difference("MarkdownCode.count", -1) do
      delete markdown_code_url(@markdown_code)
    end

    assert_redirected_to markdown_codes_url
  end
end
