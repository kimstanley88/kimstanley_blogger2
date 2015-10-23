require 'test_helper'

class AuthosControllerTest < ActionController::TestCase
  setup do
    @autho = authos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autho" do
    assert_difference('Autho.count') do
      post :create, autho: { email: @autho.email, password: @autho.password, password_confirmation: @autho.password_confirmation, username: @autho.username }
    end

    assert_redirected_to autho_path(assigns(:autho))
  end

  test "should show autho" do
    get :show, id: @autho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autho
    assert_response :success
  end

  test "should update autho" do
    patch :update, id: @autho, autho: { email: @autho.email, password: @autho.password, password_confirmation: @autho.password_confirmation, username: @autho.username }
    assert_redirected_to autho_path(assigns(:autho))
  end

  test "should destroy autho" do
    assert_difference('Autho.count', -1) do
      delete :destroy, id: @autho
    end

    assert_redirected_to authos_path
  end
end
