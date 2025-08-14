require "test_helper"

class BattleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get battle_index_url
    assert_response :success
  end

  test "should get attack" do
    get battle_attack_url
    assert_response :success
  end

  test "should get heal" do
    get battle_heal_url
    assert_response :success
  end
end
