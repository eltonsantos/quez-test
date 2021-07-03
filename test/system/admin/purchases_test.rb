require "application_system_test_case"

class Admin::PurchasesTest < ApplicationSystemTestCase
  setup do
    @admin_purchase = admin_purchases(:one)
  end

  test "visiting the index" do
    visit admin_purchases_url
    assert_selector "h1", text: "Admin/Purchases"
  end

  test "creating a Purchase" do
    visit admin_purchases_url
    click_on "New Admin/Purchase"

    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "updating a Purchase" do
    visit admin_purchases_url
    click_on "Edit", match: :first

    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase" do
    visit admin_purchases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase was successfully destroyed"
  end
end
