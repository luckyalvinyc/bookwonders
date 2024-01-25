import { API } from '$lib'

export async function load ({ fetch }) {
  const api = new API(fetch)
  const books = await api.books.featured()

  return {
    books,
  }
}
