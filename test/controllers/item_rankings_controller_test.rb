require 'test_helper'

class ItemRankingsControllerTest < ActionController::TestCase
  setup do
    @item_ranking = item_rankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_ranking" do
    assert_difference('ItemRanking.count') do
      post :create, item_ranking: { item_id: @item_ranking.item_id, rate: @item_ranking.rate }
    end

    assert_redirected_to item_ranking_path(assigns(:item_ranking))
  end

  test "should show item_ranking" do
    get :show, id: @item_ranking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_ranking
    assert_response :success
  end

  test "should update item_ranking" do
    patch :update, id: @item_ranking, item_ranking: { item_id: @item_ranking.item_id, rate: @item_ranking.rate }
    assert_redirected_to item_ranking_path(assigns(:item_ranking))
  end

  test "should destroy item_ranking" do
    assert_difference('ItemRanking.count', -1) do
      delete :destroy, id: @item_ranking
    end

    assert_redirected_to item_rankings_path
  end
end
