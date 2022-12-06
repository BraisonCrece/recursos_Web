require "application_system_test_case"

class MarkdownCodesTest < ApplicationSystemTestCase
  setup do
    @markdown_code = markdown_codes(:one)
  end

  test "visiting the index" do
    visit markdown_codes_url
    assert_selector "h1", text: "Markdown codes"
  end

  test "should create markdown code" do
    visit markdown_codes_url
    click_on "New markdown code"

    fill_in "Content", with: @markdown_code.content
    click_on "Create Markdown code"

    assert_text "Markdown code was successfully created"
    click_on "Back"
  end

  test "should update Markdown code" do
    visit markdown_code_url(@markdown_code)
    click_on "Edit this markdown code", match: :first

    fill_in "Content", with: @markdown_code.content
    click_on "Update Markdown code"

    assert_text "Markdown code was successfully updated"
    click_on "Back"
  end

  test "should destroy Markdown code" do
    visit markdown_code_url(@markdown_code)
    click_on "Destroy this markdown code", match: :first

    assert_text "Markdown code was successfully destroyed"
  end
end
