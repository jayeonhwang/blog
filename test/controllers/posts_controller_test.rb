require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/posts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Post.count, data.length
  end

  test "create" do
    assert_difference "Post.count", 1 do
      post "/posts.json", params: { title: "lake", image: "image.url", body:"posting.. "}
      assert_response 200
    end
  end
end
