require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registrations_new_url
    assert_response :success
  end

  test "should get create" do
    get registrations_create_url
    assert_response :success
  end

  test "should get view" do
    get registrations_view_url
    assert_response :success
  end

  test "should get index" do
    get registrations_index_url
    assert_response :success
  end
end
