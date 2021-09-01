require 'test_helper'

class WeblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weblog = weblogs(:one)
  end

  test "should get index" do
    get weblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_weblog_url
    assert_response :success
  end

  test "should create weblog" do
    assert_difference('Weblog.count') do
      post weblogs_url, params: { weblog: { : @weblog., content: @weblog.content, title: @weblog.title } }
    end

    assert_redirected_to weblog_url(Weblog.last)
  end

  test "should show weblog" do
    get weblog_url(@weblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_weblog_url(@weblog)
    assert_response :success
  end

  test "should update weblog" do
    patch weblog_url(@weblog), params: { weblog: { : @weblog., content: @weblog.content, title: @weblog.title } }
    assert_redirected_to weblog_url(@weblog)
  end

  test "should destroy weblog" do
    assert_difference('Weblog.count', -1) do
      delete weblog_url(@weblog)
    end

    assert_redirected_to weblogs_url
  end
end
