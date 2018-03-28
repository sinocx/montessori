require 'test_helper'

class SecondFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get second_forms_new_url
    assert_response :success
  end

  test "should get create" do
    get second_forms_create_url
    assert_response :success
  end

end
