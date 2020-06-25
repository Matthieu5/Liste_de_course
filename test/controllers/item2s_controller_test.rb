require 'test_helper'

class Item2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item2 = item2s(:one)
  end

  test "should get index" do
    get item2s_url
    assert_response :success
  end

  test "should get new" do
    get new_item2_url
    assert_response :success
  end

  test "should create item2" do
    assert_difference('Item2.count') do
      post item2s_url, params: { item2: { deja_achete: @item2.deja_achete, libelle: @item2.libelle, quantite: @item2.quantite, rayon_id: @item2.rayon_id } }
    end

    assert_redirected_to item2_url(Item2.last)
  end

  test "should show item2" do
    get item2_url(@item2)
    assert_response :success
  end

  test "should get edit" do
    get edit_item2_url(@item2)
    assert_response :success
  end

  test "should update item2" do
    patch item2_url(@item2), params: { item2: { deja_achete: @item2.deja_achete, libelle: @item2.libelle, quantite: @item2.quantite, rayon_id: @item2.rayon_id } }
    assert_redirected_to item2_url(@item2)
  end

  test "should destroy item2" do
    assert_difference('Item2.count', -1) do
      delete item2_url(@item2)
    end

    assert_redirected_to item2s_url
  end
end
