import { BaseAPI } from './bases.js'
export { HTTPError } from './bases.js'

const priceFormatter = new Intl.NumberFormat('en-PH', {
  style: 'currency',
  currency: 'PHP',
  currencyDisplay: 'code'
});

class Books extends BaseAPI {
  static remap (book) {
    book.isbn13 = book.isbn_13
    book.isbn10 = book.isbn_10
    book.imageURL = book.image_url
    book.publicationYear = book.publication_year
    book.price = priceFormatter.format(book.price)

    delete book.isbn_13
    delete book.isbn_10
    delete book.image_url
    delete book.publication_year

    return book
  }

  async featured () {
    const books = await this.fetch.get('/api/v1/books/featured')

    return books.map(Books.remap)
  }

  async get (isbn) {
    const book = await this.fetch.get(`/api/v1/books/${isbn}`)

    return Books.remap(book);
  }
}

class ISBNs extends BaseAPI {
  async convert (isbn) {
    const data = await this.fetch.post(`/api/v1/isbns/${isbn}/convert`)

    return data.isbn
  }
}

export class API {
  constructor(fetch) {
    this.books = new Books(fetch)
    this.isbns = new ISBNs(fetch)
  }
}
