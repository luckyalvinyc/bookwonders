<script>
  import '$lib/css/index.css'

  import Header from './Header.svelte'
  import Footer from './Footer.svelte'
</script>

<div>
  <Header />
  <slot></slot>
  <Footer />
</div>
