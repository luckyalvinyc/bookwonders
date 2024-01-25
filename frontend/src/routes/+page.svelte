<script>
  import imgCheapest from '$lib/assets/img-cheapest.svg'
  import imgCommitment from '$lib/assets/img-commitment.png'
  import imgUser from '$lib/assets/img-user.png'
  import cryptoBinance from '$lib/assets/crypto-binance.svg'
  import cryptoBinanceAlt from '$lib/assets/crypto-binance-alt.svg'
  import cryptoBitcoin from '$lib/assets/crypto-bitcoin.svg'
  import cryptoSolana from '$lib/assets/crypto-solana.svg'
  import cryptoEthereum from '$lib/assets/crypto-ethereum.svg'
  import cryptoTether from '$lib/assets/crypto-tether.svg'
  import cryptoXRP from '$lib/assets/crypto-xrp.svg'
  import reasonShipping from '$lib/assets/reason-shipping.svg'
  import reasonHelp from '$lib/assets/reason-help.svg'
  import reasonPiggyBank from '$lib/assets/reason-piggy-bank.svg'
  import ratings from '$lib/assets/ratings.svg'
  import iconChevronDown from '$lib/assets/icon-chevron-down.svg'
  import iconChevronDownAlt from '$lib/assets/icon-chevron-down-alt.svg'

  export let data
</script>

<svelte:head>
  <title>BookWonders</title>
</svelte:head>

<section id="hero">
  <div class="container">
    <div class="content cheapest">
      <div class="heading">
        <h1>The Cheapest TextBooks</h1>
        <p class="description">Save Up To 90% On Millions Of Titles</p>
        <p class="additional">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.</p>
        <button type="button" class="btn btn-primary">
          <span>Get Started</span>
          <img src={iconChevronDown} alt="icon-chevron-down" class="chevron--right" />
        </button>
      </div>
      <img src={imgCheapest} alt="img-cheapest" class="illustration" />
    </div>
    <div class="content commitment">
      <img src={imgCommitment} alt="alt-commitment" class="illustration" />
      <div class="heading">
        <h2>Our Commitment</h2>
        <p class="additional">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum</p>
        <button type="button" class="btn btn-secondary">
          <span class="learn-more">Learn More</span>
          <img src={iconChevronDown} alt="icon-chevron-down" class="chevron--right" />
        </button>
      </div>
    </div>
    <div class="clients">
      <h2>Trusted By Awesome <span class="highlight">Clients</span></h2>
      <div class="cryptocurrencies">
        <div class="content cryptocurrency">
          <img src={cryptoBinance} alt="crypto-binance" />
          <span>Binance</span>
        </div>
        <div class="content cryptocurrency">
          <img src={cryptoBitcoin} alt="crypto-bitcoin" />
          <span>Bitcoin</span>
        </div>
        <div class="content cryptocurrency">
          <img src={cryptoSolana} alt="crypto-solana" />
          <span>Solana</span>
        </div>
        <div class="content cryptocurrency">
          <img src={cryptoEthereum} alt="crypto-ethereum" />
          <span>Ethereum</span>
        </div>
        <div class="content cryptocurrency">
          <img src={cryptoTether} alt="crypto-tether" />
          <span>Tether</span>
        </div>
        <div class="content cryptocurrency">
          <img src={cryptoXRP} alt="crypto-xrp" />
          <span>XRP</span>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="explore">
  <div class="container">
    <div class="info">
      <h2>Explore Our Books</h2>
      <p>With our dedicated customer support team, you can rest easy knowing that we’re doing everything we can to save you time, money, and stress.</p>
    </div>
    <div class="books">
      {#each data.books as book}
        <div class="book">
          <div class="w-cover">
            <img src={book.imageURL} alt={book.title} />
          </div>
          <span class="title">{book.title}</span>
          <a href={`/books/${book.isbn13}`}>
            <span class="view-book-details">View Book Details</span>
            <img src={iconChevronDown} alt="icon-chevron-down" class="chevron--right">
          </a>
        </div>
      {/each}
    </div>
  </div>
</section>
<section id="reasons">
  <div class="container">
    <div class="heading">
      <p class="highlight">LOREM IPSUM</p>
      <h2>3 Reasons To Shop With Us</h2>
    </div>
    <div class="reasons">
      <div class="reason">
        <img src={reasonShipping} alt="reason-shipping" />
        <p class="description">All textbook rentals come with free return shipping.</p>
        <p class="additional">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd gubergren, no sea takimata.</p>
      </div>
      <div class="reason">
        <img src={reasonHelp} alt="reason-help" />
        <p class="description">Dedicated customer support and help portal.</p>
        <p class="additional">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd gubergren, no sea takimata.</p>
      </div>
      <div class="reason">
        <img src={reasonPiggyBank} alt="reason-piggy-bank" />
        <p class="description">Buy or rent cheap textbooks &amp; save up to $500 per year!</p>
        <p class="additional">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd gubergren, no sea takimata.</p>
      </div>
    </div>
  </div>
</section>
<section id="testimonials">
  <div class="customer">
    <p class="name">Andrew Santellan</p>
    <p class="position">Product Manager, Binance</p>
    <div class="company">
      <img src={cryptoBinanceAlt} alt="crypto-binance-alt" />
      <span>Binance</span>
    </div>
  </div>
  <div class="testimonial">
    <img src={imgUser} alt="img-user" class="avatar" />
    <p class="statement">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
    <img src={ratings} alt="ratings" class="ratings" />
  </div>
</section>
<section id="faqs">
  <div class="container">
    <div class="heading">
      <h2>Frequently Asked Question</h2>
    </div>
    <div class="questions">
      <div class="question">
        <div class="ask">
          <span>Dedicated customer support and help portal.</span>
          <img src={iconChevronDownAlt} alt="icon-chevron-down-alt" />
        </div>
        <p class="answer">With our dedicated customer support team, you can rest easy knowing that we’re doing everything we can to save you time, money, and stress.</p>
      </div>
      <div class="question">
        <div class="ask">
          <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</span>
          <img src={iconChevronDownAlt} alt="icon-chevron-down-alt" class="chevron--up" />
        </div>
      </div>
      <div class="question">
        <div class="ask">
          <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</span>
          <img src={iconChevronDownAlt} alt="icon-chevron-down-alt" class="chevron--up" />
        </div>
      </div>
      <div class="question">
        <div class="ask">
          <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</span>
          <img src={iconChevronDownAlt} alt="icon-chevron-down-alt" class="chevron--up" />
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  h1 {
    font-size: 3rem;
    font-weight: 900;
    color: var(--black);
    margin-bottom: 1.5rem;
  }

  h2 {
    font-size: 2rem;
    font-weight: 800;
    margin-bottom: 2.2rem;
  }

  section {
    font-weight: 700;
    padding: 7.5rem 0;
  }

  .content {
    display: flex;
    align-items: center;
  }

  .highlight {
    color: var(--yellow);
  }

  #hero {
    background-image: url($lib/assets/bg-banner.png);
    background-size: cover;
    background-position: top;
  }

  .cheapest {
    color: var(--black);
    line-height: 1.15;
    justify-content: space-between;
    margin-bottom: 8rem;
  }
  .cheapest .illustration {
    width: 720px;
  }
  .cheapest .heading {
    max-width: 426px;
  }
  .cheapest .description {
    font-size: 1.8rem;
    font-weight: 900;
    color: var(--purple);
    margin-bottom: 1.5rem;
  }

  .commitment {
    color: var(--white);
    justify-content: space-around;
    margin-bottom: 2rem;
  }
  .commitment .illustration {
    width: 536px;
  }
  .commitment .heading {
    max-width: 401px;
  }
  .commitment .heading h2 {
    margin-bottom: 1rem;
  }
  .commitment .learn-more {
    color: var(--blue-4);
  }
  .commitment .additional, .cheapest .additional  {
    font-weight: 500;
    line-height: 1.5;
    margin-bottom: 1.5rem;
  }

  .clients {
    display: flex;
    flex-direction: column;
    align-items: center;
    color: var(--white);
  }

  .cryptocurrencies {
    display: flex;
    justify-content: space-between;
    width: 100%;
  }

  .cryptocurrency > span {
    font-size: 1.3rem;
    margin-left: 1rem;
  }

  #explore {
    display: flex;
    padding-bottom: 0;
    position: relative;
    overflow: hidden;
    background-color: var(--white);
    z-index: 1;
  }
  #explore::after{
    content: '';
    position: absolute;
    bottom: -90px;
    left: -1px;
    background-color: var(--blue);
    width: 110%;
    height: 250px;
    transform: rotate(-3deg);
    z-index: -1;
  }

  #explore .info {
    font-weight: 600;
    max-width: 744px;
    text-align: center;
    margin: 0 auto;
  }
  #explore .info h2 {
    margin-bottom: 2rem;
  }

  .books {
    display: flex;
    margin-top: 4rem;
  }

  .book {
    display: flex;
    flex-direction: column;
    color: var(--white);
  }
  .book:not(:last-child) {
    margin-right: 3.75rem;
  }
  .book .w-cover {
    border: 2px solid currentColor;
    border-radius: 8px;
    padding: 14px;
    background: linear-gradient(to top, var(--gray) 5%, var(--white) 25%);
    margin-bottom: 1.2rem;
  }
  .book .w-cover img {
    display: block;
    max-width: 300px;
    max-height: 360px;
    width: auto;
    height: auto;
    border-radius: 8px;
  }
  .book .title {
    font-size: 1.5rem;
    font-weight: 800;
    margin-bottom: 1rem;
  }
  .book .view-book-details {
    color: var(--blue-4);
  }

  #reasons {
    background-color: var(--blue);
    color: var(--white);
    padding-bottom: 5.5rem;
  }
  #reasons .highlight {
    font-size: 14px;
    font-weight: 800;
    margin-bottom: 0.5rem;
    text-transform: uppercase;
  }

  .reasons {
    display: flex;
  }

  .reason {
    max-width: 356px;
  }
  .reason:not(:last-child) {
    margin-right: 4rem;
  }
  .reason > img {
    height: 55px;
    margin-bottom: 2rem;
  }
  .reason > .description {
    font-size: 1.3rem;
    font-weight: 800;
    max-width: 280px;
    margin-bottom: 2.2rem;
  }
  .reason > .additional {
    font-weight: 500;
  }

  #testimonials {
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    overflow: hidden;
    padding-top: 14rem;
    z-index: 1;
  }
  #testimonials::before {
    content: '';
    position: absolute;
    top: -90px;
    left: -10px;
    background-color: var(--blue);
    width: 110%;
    height: 200px;
    transform: rotate(-3deg);
    z-index: -1;
  }

  .customer {
    text-align: center;
    margin-bottom: 2.75rem;
  }
  .customer .name {
    color: var(--black);
    font-size: 1.5rem;
    font-weight: 800;
  }
  .customer .position {
    color: var(--blue-3);
  }
  .customer .company {
    margin-top: 1.75rem;
  }

  .company {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.2rem;
  }
  .company > img {
    margin-right: 1rem;
  }

  .testimonial {
    --gap: 3.5rem;

    display: flex;
    flex-direction: column;
    position: relative;
    align-items: center;
    background-color: var(--blue-1);
    max-width: 974px;
    border-radius: 1rem;
    padding: var(--gap);
    margin-top: calc(var(--gap) + 0.2rem);
  }
  .testimonial::before {
    content: '';
    position: absolute;
    width: 95%;
    height: 28px;
    top: -28px;
    border-top-left-radius: 0.75rem;
    border-top-right-radius: 0.75rem;
    background-color: var(--blue-2);
  }
  .testimonial .avatar {
    --width: 115px;
    --n-width: var(--width) * -1;

    position: absolute;
    top: calc(var(--n-width) / 2);
    max-width: var(--width);
  }
  .testimonial .statement {
    font-size: 1.3rem;
    font-weight: 600;
    color: var(--white);
    max-width: 675px;
    text-align: center;
    margin: 2.6rem 0;
  }

  #faqs {
    background-color: var(--white-2);
  }
  #faqs h2 {
    font-weight: 900;
    color: var(--black);
  }
  #faqs .container {
    max-width: 631px;
  }

  .question:not(:last-child) {
    margin-bottom: 1rem;
  }

  .ask {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .ask > span {
    font-size: 1.1rem;
    font-weight: 800;
    color: var(--purple);
  }

  .answer {
    font-size: 14px;
    font-weight: 600;
    padding: 1rem 0;
  }
</style>
