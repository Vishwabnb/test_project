require "application_system_test_case"

class RatingsTest < ApplicationSystemTestCase
  setup do
    @rating = ratings(:one)
  end

  test "visiting the index" do
    visit ratings_url
    assert_selector "h1", text: "Ratings"
  end

  test "creating a Rating" do
    visit ratings_url
    click_on "New Rating"

    fill_in "Customer", with: @rating.customer_id
    fill_in "Customer type", with: @rating.customer_type
    fill_in "Rating", with: @rating.rating
    click_on "Create Rating"

    assert_text "Rating was successfully created"
    click_on "Back"
  end

  test "updating a Rating" do
    visit ratings_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @rating.customer_id
    fill_in "Customer type", with: @rating.customer_type
    fill_in "Rating", with: @rating.rating
    click_on "Update Rating"

    assert_text "Rating was successfully updated"
    click_on "Back"
  end

  test "destroying a Rating" do
    visit ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rating was successfully destroyed"
  end
end
