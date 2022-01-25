require "test_helper"

class PoetriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poetry = poetries(:one)
  end

  test "should get index" do
    get poetries_url, as: :json
    assert_response :success
  end

  test "should create poetry" do
    assert_difference('Poetry.count') do
      post poetries_url, params: { poetry: { body: @poetry.body, dislikes: @poetry.dislikes, likes: @poetry.likes, title: @poetry.title, user_id: @poetry.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show poetry" do
    get poetry_url(@poetry), as: :json
    assert_response :success
  end

  test "should update poetry" do
    patch poetry_url(@poetry), params: { poetry: { body: @poetry.body, dislikes: @poetry.dislikes, likes: @poetry.likes, title: @poetry.title, user_id: @poetry.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy poetry" do
    assert_difference('Poetry.count', -1) do
      delete poetry_url(@poetry), as: :json
    end

    assert_response 204
  end
end
