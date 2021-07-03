require "test_helper"

class Admin::PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_purchase = admin_purchases(:one)
  end

  test "should get index" do
    get admin_purchases_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_purchase_url
    assert_response :success
  end

  test "should create admin_purchase" do
    assert_difference('Admin::Purchase.count') do
      post admin_purchases_url, params: { admin_purchase: {  } }
    end

    assert_redirected_to admin_purchase_url(Admin::Purchase.last)
  end

  test "should show admin_purchase" do
    get admin_purchase_url(@admin_purchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_purchase_url(@admin_purchase)
    assert_response :success
  end

  test "should update admin_purchase" do
    patch admin_purchase_url(@admin_purchase), params: { admin_purchase: {  } }
    assert_redirected_to admin_purchase_url(@admin_purchase)
  end

  test "should destroy admin_purchase" do
    assert_difference('Admin::Purchase.count', -1) do
      delete admin_purchase_url(@admin_purchase)
    end

    assert_redirected_to admin_purchases_url
  end
end
