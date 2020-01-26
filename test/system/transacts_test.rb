require "application_system_test_case"

class TransactsTest < ApplicationSystemTestCase
  setup do
    @transact = transacts(:one)
  end

  test "visiting the index" do
    visit transacts_url
    assert_selector "h1", text: "Transacts"
  end

  test "creating a Transact" do
    visit transacts_url
    click_on "New Transact"

    click_on "Create Transact"

    assert_text "Transact was successfully created"
    click_on "Back"
  end

  test "updating a Transact" do
    visit transacts_url
    click_on "Edit", match: :first

    click_on "Update Transact"

    assert_text "Transact was successfully updated"
    click_on "Back"
  end

  test "destroying a Transact" do
    visit transacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transact was successfully destroyed"
  end
end
