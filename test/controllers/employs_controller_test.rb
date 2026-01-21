require "test_helper"

class EmploysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employ = employs(:one)
  end

  test "should get index" do
    get employs_url
    assert_response :success
  end

  test "should get new" do
    get new_employ_url
    assert_response :success
  end

  test "should create employ" do
    assert_difference("Employ.count") do
      post employs_url, params: { employ: { address: @employ.address, first_name: @employ.first_name, gender: @employ.gender, last_name: @employ.last_name, middle_name: @employ.middle_name, phone_number: @employ.phone_number, refno: @employ.refno } }
    end

    assert_redirected_to employ_url(Employ.last)
  end

  test "should show employ" do
    get employ_url(@employ)
    assert_response :success
  end

  test "should get edit" do
    get edit_employ_url(@employ)
    assert_response :success
  end

  test "should update employ" do
    patch employ_url(@employ), params: { employ: { address: @employ.address, first_name: @employ.first_name, gender: @employ.gender, last_name: @employ.last_name, middle_name: @employ.middle_name, phone_number: @employ.phone_number, refno: @employ.refno } }
    assert_redirected_to employ_url(@employ)
  end

  test "should destroy employ" do
    assert_difference("Employ.count", -1) do
      delete employ_url(@employ)
    end

    assert_redirected_to employs_url
  end
end
