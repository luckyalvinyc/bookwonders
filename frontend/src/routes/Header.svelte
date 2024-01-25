<script>
  import { afterNavigate, goto } from '$app/navigation'

  import spikes from "$lib/assets/spikes.svg"
  import logoCompany from "$lib/assets/logo-company.svg"
  import iconGlobe from "$lib/assets/icon-globe.svg"

  const ENTER_KEY = 13

  let isbn = ''

  afterNavigate(({ to }) => {
    if (to.route.id === '/') {
      isbn = ''
    }

    if (to.params.isbn !== undefined) {
      isbn = to.params.isbn
    }
  })

  function handleKeydown (event) {
    if (event.keyCode !== ENTER_KEY) {
      return
    }

    const value = isbn.trim()

    if (value === '') {
      return
    }

    goto(`/books/${value}`, {
      invalidateAll: true,
    })
  }
</script>

<header>
  <div class="announcement">
    <img src={spikes} alt="spikes" class="spikes spikes--inverted" />
    <span class="description">Save up to $500 per year on millions of book titles!</span>
    <img src={spikes} alt="spikes" />
  </div>
  <nav class="container">
    <a href="/"><img src={logoCompany} alt="logo-company" class="logo" /></a>
    <input placeholder="Search" class="search" bind:value={isbn} on:keydown={handleKeydown} />
    <div class="right">
      <div class="links">
        <a href="#" class="link">Home</a>
        <a href="#" class="link">Rent Textbooks</a>
        <a href="#" class="link">Buy Textbooks</a>
        <a href="#" class="link">Sell Textbooks</a>
      </div>
      <div class="language">
        <img src={iconGlobe} alt="icon-globe" />
        <span>En</span>
      </div>
      <button type="button" class="btn btn-primary">Contact</button>
    </div>
  </nav>
</header>

<style>
  nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.5rem 0;
  }

  .announcement {
    display: flex;
    align-items: center;
    justify-content: center;
    background-image: url($lib/assets/bg-announcement.png);
    background-size: cover;
    background-position: center center;
    color: #ffffff;
    padding: 0.5rem;
  }

  .spikes--inverted {
    transform: scaleX(-1);
  }

  .description {
    padding: 0 0.65rem;
  }

  .search {
    background-image: url($lib/assets/icon-search.svg);
    background-position: 10px;
    background-repeat: no-repeat;
    padding-left: 2.3rem;
  }

  .right {
    display: flex;
    align-items: center;
    color: var(--black);
    font-weight: 600;
  }

  .links {
    padding-right: 1rem;
    margin-right: 1.5rem;
    position: relative;
  }
  .links::after {
    content: '';
    position: absolute;
    top: 50%;
    right: 0;
    width: 1.5px;
    height: 80%;
    transform: translateY(-50%);
    background-color: var(--gray-2);
  }

  .link:not(:last-child) {
    margin-right: 1rem;
  }

  .language {
    display: flex;
    align-items: center;
    margin-right: 1.55rem;
  }
  .language img {
    margin-right: 4px;
  }
</style>
