<?php
/*
Template Name: Dashboard Page
*/
?>

<?php get_header()?>
<?php get_sidebar()?>

<!-- Dashboard form -->
<div class="main-container">

<?php get_sidebar()?>

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