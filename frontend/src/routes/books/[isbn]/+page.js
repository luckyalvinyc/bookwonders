import { error } from '@sveltejs/kit';
import { API, HTTPError } from '$lib'

export async function load({ fetch, params }) {
  const api = new API(fetch)

  let book

  try {
    const isbn = await api.isbns.convert(params.isbn)
    book = await api.books.get(isbn)
  } catch (e) {
    console.log({ e })
    if (e instanceof HTTPError) {
      error(e.status, e.message)
    }
    throw e
  }

  return {
    book,
  }
}
