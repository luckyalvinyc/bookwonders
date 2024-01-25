<script>
  export let data
</script>

<svelte:head>
  <title>{data.book.title}</title>
</svelte:head>

<section class="container">
  <div class="heading">
    <h1>Search Result</h1>
  </div>
  <div class="book">
    <img src={data.book.imageURL} alt={data.book.title} />
    <div class="info">
      <h2>{data.book.title}</h2>
      <p class="authors">by {data.book.authors}</p>
      <div class="details">
        {#if data.book.edition}
          <div class="detail">
            <span class="label">Edition:</span>
            <span class="value">{data.book.edition}</span>
          </div>
        {/if}
        <div class="detail">
          <span class="label">Price:</span>
          <span class="value">{data.book.price}</span>
        </div>
        <div class="detail">
          <span class="label">ISBN:</span>
          <span class="value">{data.book.isbn13}</span>
        </div>
        <div class="detail">
          <span class="label">Publication Year:</span>
          <span class="value">{data.book.publicationYear}</span>
        </div>
        <div class="detail">
          <span class="label">Publisher:</span>
          <span class="value">{data.book.publisher}</span>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .container {
    color: var(--black);
    max-width: 70%;
    padding: 4rem 0;
  }

  .heading {
    margin-bottom: 2.5rem;
  }
  .heading h1 {
    font-size: 2.5rem;
    font-weight: 900;
  }

  .book {
    display: flex;
  }
  .book img {
    max-width: 300px;
    max-height: 360px;
    width: auto;
    height: auto;
    border-radius: 8px;
    margin-right: 4.5rem;
  }
  .book h2 {
    font-size: 1.75rem;
    font-weight: 800;
  }
  .book h2, .book p {
    margin-bottom: 1.75rem;
  }
  .book p {
    font-size: 1.2rem;
  }
  .book span {
    font-size: 1.1rem;
  }
  .book p, .book span {
    font-weight: 800;
  }

  .label {
    margin-right: 2px;
  }

  .value {
    color: var(--purple);
  }
</style>
