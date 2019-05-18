require 'test_helper'

class HpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hp = hps(:one)
  end

  test "should get index" do
    get hps_url
    assert_response :success
  end

  test "should get new" do
    get new_hp_url
    assert_response :success
  end

  test "should create hp" do
    assert_difference('Hp.count') do
      post hps_url, params: { hp: {  } }
    end

    assert_redirected_to hp_url(Hp.last)
  end

  test "should show hp" do
    get hp_url(@hp)
    assert_response :success
  end

  test "should get edit" do
    get edit_hp_url(@hp)
    assert_response :success
  end

  test "should update hp" do
    patch hp_url(@hp), params: { hp: {  } }
    assert_redirected_to hp_url(@hp)
  end

  test "should destroy hp" do
    assert_difference('Hp.count', -1) do
      delete hp_url(@hp)
    end

    assert_redirected_to hps_url
  end
end
