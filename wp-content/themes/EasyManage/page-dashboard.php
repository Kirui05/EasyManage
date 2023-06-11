<?php
/*
Template Name: Dashboard Page
*/
?>

<?php get_header()?>

<!-- Dashboard form -->

<main>
<?php get_sidebar()?>

<div class="main-container">

<div class="card">
  <img src="image.jpg" alt="Card Image">
  <div class="card-content">
    <h3>Users</h3>
    <div class="number-bubble">42</div>
    <!-- <p>This is a sample card.</p> -->
    <a href="#" class="btn">Read More</a>
  </div>
</div>

</main>

<style>
    main{
        display: grid;
        grid-template-columns: 250px 1fr;
        grid-template-rows: 82vh;
    }
    .main-container{
        width: 100%;
        height:82vh;
        background-color: #e6e6e6;
    }
</style>
<?php get_footer()?>