<script>
  import { page } from '$app/stores'
</script>

<section class="container">
  <h1>{$page.error.message}</h1>
</section>

<style>
  .container {
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--black);
    padding-top: 2.5rem
  }
</style>
