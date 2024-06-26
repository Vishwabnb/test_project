require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get shops_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_url
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post shops_url, params: { shop: { address: @shop.address, city: @shop.city, close_time: @shop.close_time, email: @shop.email, name: @shop.name, open_time: @shop.open_time, owner_id: @shop.owner_id, phone_no: @shop.phone_no, website: @shop.website } }
    end

    assert_redirected_to shop_url(Shop.last)
  end

  test "should show shop" do
    get shop_url(@shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_url(@shop)
    assert_response :success
  end

  test "should update shop" do
    patch shop_url(@shop), params: { shop: { address: @shop.address, city: @shop.city, close_time: @shop.close_time, email: @shop.email, name: @shop.name, open_time: @shop.open_time, owner_id: @shop.owner_id, phone_no: @shop.phone_no, website: @shop.website } }
    assert_redirected_to shop_url(@shop)
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete shop_url(@shop)
    end

    assert_redirected_to shops_url
  end
end
