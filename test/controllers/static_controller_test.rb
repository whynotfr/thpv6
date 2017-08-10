require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_home_url
    assert_response :success
  end

  test "should get cursus" do
    get static_cursus_url
    assert_response :success
  end

  test "should get philosophie" do
    get static_philosophie_url
    assert_response :success
  end

  test "should get faq" do
    get static_faq_url
    assert_response :success
  end

end
