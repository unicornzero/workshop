require 'test_helper'

class DiningTablesControllerTest < ActionController::TestCase
  setup do
    @dining_table = dining_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dining_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dining_table" do
    assert_difference('DiningTable.count') do
      post :create, dining_table: { seats: @dining_table.seats, status: @dining_table.status, table_number: @dining_table.table_number }
    end

    assert_redirected_to dining_table_path(assigns(:dining_table))
  end

  test "should show dining_table" do
    get :show, id: @dining_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dining_table
    assert_response :success
  end

  test "should update dining_table" do
    put :update, id: @dining_table, dining_table: { seats: @dining_table.seats, status: @dining_table.status, table_number: @dining_table.table_number }
    assert_redirected_to dining_table_path(assigns(:dining_table))
  end

  test "should destroy dining_table" do
    assert_difference('DiningTable.count', -1) do
      delete :destroy, id: @dining_table
    end

    assert_redirected_to dining_tables_path
  end
end
