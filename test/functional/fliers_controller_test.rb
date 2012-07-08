require 'test_helper'

class FliersControllerTest < ActionController::TestCase
  setup do
    @flier = fliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flier" do
    assert_difference('Flier.count') do
      post :create, flier: {  title: @flier. title, description: @flier.description, endtime: @flier.endtime, imageurl: @flier.imageurl, starttime: @flier.starttime, tagline: @flier.tagline }
    end

    assert_redirected_to flier_path(assigns(:flier))
  end

  test "should show flier" do
    get :show, id: @flier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flier
    assert_response :success
  end

  test "should update flier" do
    put :update, id: @flier, flier: {  title: @flier. title, description: @flier.description, endtime: @flier.endtime, imageurl: @flier.imageurl, starttime: @flier.starttime, tagline: @flier.tagline }
    assert_redirected_to flier_path(assigns(:flier))
  end

  test "should destroy flier" do
    assert_difference('Flier.count', -1) do
      delete :destroy, id: @flier
    end

    assert_redirected_to fliers_path
  end
end
