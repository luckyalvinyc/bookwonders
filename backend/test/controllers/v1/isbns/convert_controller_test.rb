# frozen_string_literal: true

class V1::Isbns::ConvertControllerTest < ActionDispatch::IntegrationTest
  test "converts ISBN 13 to ISBN 10" do
    post convert_v1_isbn_url("978-1-891830-85-3"), as: :json

    expected = {
      "isbn" => "1-891830-85-6"
    }

    assert_response :ok
    assert_equal(expected, @response.parsed_body)
  end

  test "converts ISBN 10 to ISBN 13" do
    post convert_v1_isbn_url("1-891830-85-6"), as: :json

    expected = {
      "isbn" => "978-1-891830-85-3"
    }

    assert_response :ok
    assert_equal(expected, @response.parsed_body)
  end

  test "responds with bad request" do
    post convert_v1_isbn_url("1-891830-85"), as: :json

    expected = {
      "error" => {
        "message" => "The ISBN is incorrect."
      }
    }

    assert_response :bad_request
    assert_equal(expected, @response.parsed_body)
  end
end
