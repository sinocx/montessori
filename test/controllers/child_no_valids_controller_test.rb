require 'test_helper'

class ChildNoValidsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get child_no_valids_new_url
    assert_response :success
  end

  test "should get create" do
    get child_no_valids_create_url
    assert_response :success
  end

end
