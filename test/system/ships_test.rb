require "application_system_test_case"

class ShipsTest < ApplicationSystemTestCase
  setup do
    @ship = ships(:one)
  end

  test "visiting the index" do
    visit ships_url
    assert_selector "h1", text: "Ships"
  end

  test "creating a Ship" do
    visit ships_url
    click_on "New Ship"

    click_on "Create Ship"

    assert_text "Ship was successfully created"
    click_on "Back"
  end

  test "updating a Ship" do
    visit ships_url
    click_on "Edit", match: :first

    click_on "Update Ship"

    assert_text "Ship was successfully updated"
    click_on "Back"
  end

  test "destroying a Ship" do
    visit ships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ship was successfully destroyed"
  end
end
