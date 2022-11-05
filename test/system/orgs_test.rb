require "application_system_test_case"

class OrgsTest < ApplicationSystemTestCase
  setup do
    @org = orgs(:one)
  end

  test "visiting the index" do
    visit orgs_url
    assert_selector "h1", text: "Orgs"
  end

  test "should create org" do
    visit orgs_url
    click_on "New org"

    fill_in "Name", with: @org.name
    click_on "Create Org"

    assert_text "Org was successfully created"
    click_on "Back"
  end

  test "should update Org" do
    visit org_url(@org)
    click_on "Edit this org", match: :first

    fill_in "Name", with: @org.name
    click_on "Update Org"

    assert_text "Org was successfully updated"
    click_on "Back"
  end

  test "should destroy Org" do
    visit org_url(@org)
    click_on "Destroy this org", match: :first

    assert_text "Org was successfully destroyed"
  end
end
