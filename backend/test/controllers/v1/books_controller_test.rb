# frozen_string_literal: true

class V1::BooksControllerTest < ActionDispatch::IntegrationTest
  test "retrieves a book using ISBN 13" do
    book = books(:american_elf)
    get v1_book_url(book.isbn.thirteen), xhr: true

    expected = {
      "title" => book.title,
      "authors" => book.authors.to_csv,
      "isbn_13" => book.isbn.thirteen,
      "isbn_10" => book.isbn.ten,
      "publication_year" => book.publication_year,
      "publisher" => book.publisher.name,
      "edition" => book.edition,
      "price" => book.list_price,
      "image_url" => book.image_url,
      "created_at" => book.created_at.iso8601,
      "updated_at" => book.updated_at.iso8601
    }

    assert_response :ok
    assert_equal expected, response.parsed_body
  end

  test "retrieves a book using ISBN 10" do
    book = books(:american_elf)
    get v1_book_url(book.isbn.ten), xhr: true

    expected = {
      "title" => book.title,
      "authors" => book.authors.to_csv,
      "isbn_13" => book.isbn.thirteen,
      "isbn_10" => book.isbn.ten,
      "publication_year" => book.publication_year,
      "publisher" => book.publisher.name,
      "edition" => book.edition,
      "price" => book.list_price,
      "image_url" => book.image_url,
      "created_at" => book.created_at.iso8601,
      "updated_at" => book.updated_at.iso8601
    }

    assert_response :ok
    assert_equal expected, response.parsed_body
  end

  test "responds with bad request if ISBN provided is invalid" do
    get v1_book_url('978-3-16-148410-1'), xhr: true

    expected = {
      'error' => {
        'message' => "The ISBN is incorrect."
      }
    }

    assert_response :bad_request
    assert_equal expected, response.parsed_body
  end

  test "responds with not found for non-existing book" do
    get v1_book_url('978-3-16-148410-0'), xhr: true

    expected = {
      'error' => {
        'message' => "Couldn't find book."
      }
    }

    assert_response :not_found
    assert_equal expected, response.parsed_body
  end
end
