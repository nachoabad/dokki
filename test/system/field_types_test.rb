require "application_system_test_case"

class FieldTypesTest < ApplicationSystemTestCase
  setup do
    @field_type = field_types(:one)
  end

  test "visiting the index" do
    visit field_types_url
    assert_selector "h1", text: "Field types"
  end

  test "should create field type" do
    visit field_types_url
    click_on "New field type"

    fill_in "Kind", with: @field_type.kind
    fill_in "Name", with: @field_type.name
    fill_in "Template", with: @field_type.template_id
    click_on "Create Field type"

    assert_text "Field type was successfully created"
    click_on "Back"
  end

  test "should update Field type" do
    visit field_type_url(@field_type)
    click_on "Edit this field type", match: :first

    fill_in "Kind", with: @field_type.kind
    fill_in "Name", with: @field_type.name
    fill_in "Template", with: @field_type.template_id
    click_on "Update Field type"

    assert_text "Field type was successfully updated"
    click_on "Back"
  end

  test "should destroy Field type" do
    visit field_type_url(@field_type)
    click_on "Destroy this field type", match: :first

    assert_text "Field type was successfully destroyed"
  end
end
