require 'test_helper'

class MoreInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get more_infos_new_url
    assert_response :success
  end

  test "should get create" do
    get more_infos_create_url
    assert_response :success
  end

end
