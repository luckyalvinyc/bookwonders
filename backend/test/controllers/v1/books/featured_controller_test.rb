# frozen_string_literal: true

class V1::Books::FeaturedControllerTest < ActionDispatch::IntegrationTest
  test "lists all featured books" do
    get v1_books_featured_url, xhr: true

    assert_response :ok
    assert_instance_of Array, response.parsed_body
    assert 3 >= response.parsed_body.size
  end
end
