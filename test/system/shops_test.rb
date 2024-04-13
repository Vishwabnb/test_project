require "application_system_test_case"

class ShopsTest < ApplicationSystemTestCase
  setup do
    @shop = shops(:one)
  end

  test "visiting the index" do
    visit shops_url
    assert_selector "h1", text: "Shops"
  end

  test "creating a Shop" do
    visit shops_url
    click_on "New Shop"

    fill_in "Address", with: @shop.address
    fill_in "City", with: @shop.city
    fill_in "Close time", with: @shop.close_time
    fill_in "Email", with: @shop.email
    fill_in "Name", with: @shop.name
    fill_in "Open time", with: @shop.open_time
    fill_in "Owner", with: @shop.owner_id
    fill_in "Phone no", with: @shop.phone_no
    fill_in "Website", with: @shop.website
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "updating a Shop" do
    visit shops_url
    click_on "Edit", match: :first

    fill_in "Address", with: @shop.address
    fill_in "City", with: @shop.city
    fill_in "Close time", with: @shop.close_time
    fill_in "Email", with: @shop.email
    fill_in "Name", with: @shop.name
    fill_in "Open time", with: @shop.open_time
    fill_in "Owner", with: @shop.owner_id
    fill_in "Phone no", with: @shop.phone_no
    fill_in "Website", with: @shop.website
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop" do
    visit shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop was successfully destroyed"
  end
end
