require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get product_home_url
    assert_response :success
  end

  test "should get search" do
    get product_search_url
    assert_response :success
  end

  test "should get category" do
    get product_category_url
    assert_response :success
  end

end
