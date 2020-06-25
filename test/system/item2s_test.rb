require "application_system_test_case"

class Item2sTest < ApplicationSystemTestCase
  setup do
    @item2 = item2s(:one)
  end

  test "visiting the index" do
    visit item2s_url
    assert_selector "h1", text: "Item2s"
  end

  test "creating a Item2" do
    visit item2s_url
    click_on "New Item2"

    check "Deja achete" if @item2.deja_achete
    fill_in "Libelle", with: @item2.libelle
    fill_in "Quantite", with: @item2.quantite
    fill_in "Rayon", with: @item2.rayon_id
    click_on "Create Item2"

    assert_text "Item2 was successfully created"
    click_on "Back"
  end

  test "updating a Item2" do
    visit item2s_url
    click_on "Edit", match: :first

    check "Deja achete" if @item2.deja_achete
    fill_in "Libelle", with: @item2.libelle
    fill_in "Quantite", with: @item2.quantite
    fill_in "Rayon", with: @item2.rayon_id
    click_on "Update Item2"

    assert_text "Item2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Item2" do
    visit item2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item2 was successfully destroyed"
  end
end
