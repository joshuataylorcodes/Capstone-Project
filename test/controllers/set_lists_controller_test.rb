require "test_helper"

class SetListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @set_list = SetList.create(user_id: @user.id, total_time: 10)
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  # test "index" do
  #   get "/orders.json", headers: { "Authorization" => "Bearer #{@jwt}" }
  #   assert_response 200
  # end

  test "create" do
    post "/set_lists.json",
      params: { total_time: 10 },
      headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  # test "show" do
  #   get "/orders/#{@order.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "quantity", "subtotal", "tax", "total", "product", "created_at", "updated_at"], data.keys
  # end
end
