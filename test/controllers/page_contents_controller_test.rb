require 'test_helper'

class PageContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_content = page_contents(:one)
  end

  test "should get index" do
    get page_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_page_content_url
    assert_response :success
  end

  test "should create page_content" do
    assert_difference('PageContent.count') do
      post page_contents_url, params: { page_content: { source: @page_content.source } }
    end

    assert_redirected_to page_content_url(PageContent.last)
  end
end
