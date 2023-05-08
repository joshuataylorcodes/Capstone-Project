require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "update" do
    song = Song.first
    patch "/songs/#{song.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
end
