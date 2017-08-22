require 'test_helper'

class SavegamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @savegame = savegames(:one)
  end

  test "should get index" do
    get savegames_url, as: :json
    assert_response :success
  end

  test "should create savegame" do
    assert_difference('Savegame.count') do
      post savegames_url, params: { savegame: { name: @savegame.name, score: @savegame.score, size: @savegame.size } }, as: :json
    end

    assert_response 201
  end

  test "should show savegame" do
    get savegame_url(@savegame), as: :json
    assert_response :success
  end

  test "should update savegame" do
    patch savegame_url(@savegame), params: { savegame: { name: @savegame.name, score: @savegame.score, size: @savegame.size } }, as: :json
    assert_response 200
  end

  test "should destroy savegame" do
    assert_difference('Savegame.count', -1) do
      delete savegame_url(@savegame), as: :json
    end

    assert_response 204
  end
end
