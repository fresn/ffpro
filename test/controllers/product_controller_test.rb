require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_index_url
    assert_response :success
  end

  test "should get search" do
    get product_search_url
    assert_response :success
  end

  test "should get Category" do
    get product_Category_url
    assert_response :success
  end

end
