<script>
  import chatBubble from '$lib/assets/chat-bubble.svg'
  import logoCompany from '$lib/assets/logo-company.svg'
  import logoFacebook from '$lib/assets/logo-facebook.svg'
  import logoLinkedin from '$lib/assets/logo-linkedin.svg'
  import logoTwitter from '$lib/assets/logo-twitter.svg'
  import iconChevronDownAlt from '$lib/assets/icon-chevron-down-alt.svg'
</script>

<div class="container">
  <section class="sitemap">
    <div class="information">
      <a href="/" class="company-logo">
        <img src={logoCompany} alt="logo-company" />
      </a>
      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod</p>
      <div class="email-address">
        <input placeholder="Email Address" />
        <img src={iconChevronDownAlt} alt="icon-chevron-down-alt" />
      </div>
    </div>
    <div class="links">
      <div class="links__menu">
        <div class="heading">
          <strong>Menu</strong>
        </div>
        <ul>
          <li><a href="#" class="link">Shop All</a></li>
          <li><a href="#" class="link">About Us</a></li>
          <li><a href="#" class="link">Community</a></li>
          <li><a href="#" class="link">FAQs</a></li>
        </ul>
      </div>
      <div class="links__support">
        <div class="heading">
          <strong>Support</strong>
        </div>
        <ul>
          <li><a href="#" class="link">Shipping &amp; Returns</a></li>
          <li><a href="#" class="link">Help &amp; FAQ</a></li>
          <li><a href="#" class="link">Terms &amp; Conditions</a></li>
          <li><a href="#" class="link">Privacy Policy</a></li>
          <li><a href="#" class="link">Contact</a></li>
          <li><a href="#" class="link">Login</a></li>
        </ul>
      </div>
      <div class="links__resources">
        <div class="heading">
          <strong>Resources</strong>
        </div>
        <ul>
          <li><a href="#" class="link">Shipping &amp; Returns</a></li>
          <li><a href="#" class="link">Help &amp; FAQ</a></li>
          <li><a href="#" class="link">Terms &amp; Conditions</a></li>
          <li><a href="#" class="link">Privacy Policy</a></li>
          <li><a href="#" class="link">Contact</a></li>
          <li><a href="#" class="link">Login</a></li>
        </ul>
      </div>
      <div class="contact">
        <div class="chat-bubble">
          <img src={chatBubble} alt="rounded chat-bubble" />
        </div>
      </div>
    </div>
  </section>
  <footer>
    <strong>&copy; 2022 Brainly.</strong>
    <div class="socials">
      <div class="rounded social"><img src={logoFacebook} alt="logo-facebook" /></div>
      <div class="rounded social"><img src={logoLinkedin} alt="logo-linkedin" /></div>
      <div class="rounded social"><img src={logoTwitter} alt="logo-twitter" /></div>
    </div>
  </footer>
</div>

<style>
  ul {
    list-style-type: none;
  }

  footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  footer > strong {
    color: var(--black);
    font-size: 14px;
  }

  .container {
    padding: 5rem 0;
  }

  .sitemap {
    display: flex;
    justify-content: space-between;
    margin-bottom: 3rem;
  }

  .information {
    max-width: 286px;
  }
  .information .company-logo {
    display: block;
    margin-bottom: 2rem;
  }
  .information > p {
    color: var(--black);
    font-weight: 600;
    margin-bottom: 2.5rem;
  }
  .information .email-address {
    position: relative;
    max-width: 216px;
  }
  .information .email-address input {
    background-color: var(--gray-1);
    padding: 0.7rem 1.7rem 0.7rem 1rem;
  }
  .information .email-address img {
    position: absolute;
    top: 50%;
    right: 1px;
    transform: translateY(-50%) rotate(-90deg);
  }

  .links {
    display: flex;
  }
  .links > div:not(:last-child) {
    margin-right: 8rem;
  }
  .links .heading {
    color: var(--black);
    font-size: 1.2rem;
    margin-bottom: 0.7rem;
  }
  .links ul {
    font-size: 0.875rem;
    font-weight: 500;
  }
  .links ul li {
    padding-top: 0.5rem;
  }
  .links ul li a {
    color: var(--gray);
  }

  .contact {
    align-self: flex-end;
    padding-bottom: 1.3rem;
  }

  .chat-bubble {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 80px;
    height: 80px;
    background-color: #7ecef6;
    border-radius: 50%;
    cursor: pointer;
  }

  .rounded  {
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
  }

  .socials {
    display: flex;
  }

  .social {
    width: 50px;
    height: 50px;
    background-color: #f2f2fe;
  }
  .social:not(:last-child) {
    margin-right: 1rem;
  }
</style>
