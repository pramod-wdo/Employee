require "application_system_test_case"

class EmploysTest < ApplicationSystemTestCase
  setup do
    @employ = employs(:one)
  end

  test "visiting the index" do
    visit employs_url
    assert_selector "h1", text: "Employs"
  end

  test "should create employ" do
    visit employs_url
    click_on "New employ"

    fill_in "Address", with: @employ.address
    fill_in "First name", with: @employ.first_name
    fill_in "Gender", with: @employ.gender
    fill_in "Last name", with: @employ.last_name
    fill_in "Middle name", with: @employ.middle_name
    fill_in "Phone number", with: @employ.phone_number
    fill_in "Refno", with: @employ.refno
    click_on "Create Employ"

    assert_text "Employ was successfully created"
    click_on "Back"
  end

  test "should update Employ" do
    visit employ_url(@employ)
    click_on "Edit this employ", match: :first

    fill_in "Address", with: @employ.address
    fill_in "First name", with: @employ.first_name
    fill_in "Gender", with: @employ.gender
    fill_in "Last name", with: @employ.last_name
    fill_in "Middle name", with: @employ.middle_name
    fill_in "Phone number", with: @employ.phone_number
    fill_in "Refno", with: @employ.refno
    click_on "Update Employ"

    assert_text "Employ was successfully updated"
    click_on "Back"
  end

  test "should destroy Employ" do
    visit employ_url(@employ)
    click_on "Destroy this employ", match: :first

    assert_text "Employ was successfully destroyed"
  end
end
