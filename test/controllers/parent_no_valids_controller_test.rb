require 'test_helper'

class ParentNoValidsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get parent_no_valids_new_url
    assert_response :success
  end

  test "should get create" do
    get parent_no_valids_create_url
    assert_response :success
  end

end
