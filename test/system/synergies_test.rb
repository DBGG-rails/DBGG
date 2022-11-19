require "application_system_test_case"

class SynergiesTest < ApplicationSystemTestCase
  setup do
    @synergy = synergies(:one)
  end

  test "visiting the index" do
    visit synergies_url
    assert_selector "h1", text: "Synergies"
  end

  test "creating a Synergy" do
    visit synergies_url
    click_on "New Synergy"

    fill_in "S name", with: @synergy.s_name
    click_on "Create Synergy"

    assert_text "Synergy was successfully created"
    click_on "Back"
  end

  test "updating a Synergy" do
    visit synergies_url
    click_on "Edit", match: :first

    fill_in "S name", with: @synergy.s_name
    click_on "Update Synergy"

    assert_text "Synergy was successfully updated"
    click_on "Back"
  end

  test "destroying a Synergy" do
    visit synergies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Synergy was successfully destroyed"
  end
end
