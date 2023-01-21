require "application_system_test_case"

class CathegoriesTest < ApplicationSystemTestCase
  setup do
    @cathegory = cathegories(:one)
  end

  test "visiting the index" do
    visit cathegories_url
    assert_selector "h1", text: "Cathegories"
  end

  test "should create cathegory" do
    visit cathegories_url
    click_on "New cathegory"

    fill_in "Description", with: @cathegory.description
    fill_in "Icon", with: @cathegory.icon
    fill_in "Title", with: @cathegory.title
    fill_in "User", with: @cathegory.user_id
    click_on "Create Cathegory"

    assert_text "Cathegory was successfully created"
    click_on "Back"
  end

  test "should update Cathegory" do
    visit cathegory_url(@cathegory)
    click_on "Edit this cathegory", match: :first

    fill_in "Description", with: @cathegory.description
    fill_in "Icon", with: @cathegory.icon
    fill_in "Title", with: @cathegory.title
    fill_in "User", with: @cathegory.user_id
    click_on "Update Cathegory"

    assert_text "Cathegory was successfully updated"
    click_on "Back"
  end

  test "should destroy Cathegory" do
    visit cathegory_url(@cathegory)
    click_on "Destroy this cathegory", match: :first

    assert_text "Cathegory was successfully destroyed"
  end
end
