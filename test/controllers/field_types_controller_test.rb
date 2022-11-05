require "test_helper"

class FieldTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_type = field_types(:one)
  end

  test "should get index" do
    get field_types_url
    assert_response :success
  end

  test "should get new" do
    get new_field_type_url
    assert_response :success
  end

  test "should create field_type" do
    assert_difference("FieldType.count") do
      post field_types_url, params: { field_type: { kind: @field_type.kind, name: @field_type.name, template_id: @field_type.template_id } }
    end

    assert_redirected_to field_type_url(FieldType.last)
  end

  test "should show field_type" do
    get field_type_url(@field_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_type_url(@field_type)
    assert_response :success
  end

  test "should update field_type" do
    patch field_type_url(@field_type), params: { field_type: { kind: @field_type.kind, name: @field_type.name, template_id: @field_type.template_id } }
    assert_redirected_to field_type_url(@field_type)
  end

  test "should destroy field_type" do
    assert_difference("FieldType.count", -1) do
      delete field_type_url(@field_type)
    end

    assert_redirected_to field_types_url
  end
end
