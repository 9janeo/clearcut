require 'test_helper'

class EstimateControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get estimate_new_url
    assert_response :success
  end

  test "should get load" do
    get estimate_load_url
    assert_response :success
  end

  test "should get clear" do
    get estimate_clear_url
    assert_response :success
  end

  test "should get delete" do
    get estimate_delete_url
    assert_response :success
  end

end
