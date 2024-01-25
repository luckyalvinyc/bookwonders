export class HTTPError extends Error {
  constructor (message) {
    super(message)
    this.name = this.constructor.name
  }
}

class BadRequest extends HTTPError {
  constructor (message) {
    super(message)
    this.status =  400
  }
}
class NotFound extends HTTPError {
  constructor (message) {
    super(message)
    this.status =  404
  }
}

class Wrapper {
  constructor (fetch) {
    this.fetch = fetch
  }

  get(path) {
    const request = makeRequest(this.fetch, 'GET')
    return request(path)
  }

  post(path) {
    const request = makeRequest(this.fetch, 'POST')
    return request(path)
  }
}

function makeRequest(fetch, method) {
  return async function request (path) {
    const response = await fetch(path, {
      method,
    })

    const data = await response.json()

    switch (response.status) {
      case 400:
        throw new BadRequest(data.error.message)

      case 404:
        throw new NotFound(data.error.message)

      default:
        return data
    }
  }
}

export class BaseAPI {
  constructor (fetch) {
    this.fetch = new Wrapper(fetch)
  }
}
