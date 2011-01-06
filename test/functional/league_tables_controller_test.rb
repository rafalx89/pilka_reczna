require 'test_helper'

class LeagueTablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:league_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create league_table" do
    assert_difference('LeagueTable.count') do
      post :create, :league_table => { }
    end

    assert_redirected_to league_table_path(assigns(:league_table))
  end

  test "should show league_table" do
    get :show, :id => league_tables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => league_tables(:one).to_param
    assert_response :success
  end

  test "should update league_table" do
    put :update, :id => league_tables(:one).to_param, :league_table => { }
    assert_redirected_to league_table_path(assigns(:league_table))
  end

  test "should destroy league_table" do
    assert_difference('LeagueTable.count', -1) do
      delete :destroy, :id => league_tables(:one).to_param
    end

    assert_redirected_to league_tables_path
  end
end
