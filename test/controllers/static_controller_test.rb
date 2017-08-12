require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get cursus" do
    get cursus_path
    assert_response :success
  end

  test "should get philosophie" do
    get philosophie_path
    assert_response :success
  end

  test "should get faq" do
    get faq_path
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_response :success
  end
end
