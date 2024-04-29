require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_index_url
    assert_response :success
  end

  test "should get show" do
    get articles_show_url
    assert_response :success
  end

  test "should get view" do
    get articles_view_url
    assert_response :success
  end

  test "should get delete" do
    get articles_delete_url
    assert_response :success
  end
end
