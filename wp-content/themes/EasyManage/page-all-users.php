<?php
/*
Template Name: All users Page
*/
?>

<?php get_header() ?>
<main>

    <?php get_sidebar() ?>

    <div class="main-container">
        <div class="scrollable-table">
            <table class="table">
                <tbody>
                    <!-- Get all users from the wp_users table -->
                    <?php echo do_shortcode('[display_table]'); ?>
                </tbody>
            </table>
        </div>
    </div>
</main>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    main {
        display: grid;
        grid-template-columns: 250px 1fr;
        grid-template-rows: 82vh;
    }

    .main-container {
        width: 100%;
        height: 82vh;
        background-color: #f8f8f8;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
        /* Add this line to hide the overflow */
    }

    .scrollable-table {
        max-height: 80vh;
        overflow-y: auto;
        width: calc(100% - 30px);
        /* Adjust the width as needed */
        margin: 0 auto;
        /* Center the table horizontally */
    }

    .table {
        width: 100%;
        margin-top: 10px;
    }

    .table th,
    .table td {
        padding: 8px;
        vertical-align: middle;
        text-align: left;
    }

    .table thead th {
        background-color: #ffff;
    }

    .table tbody tr:nth-of-type(even) {
        background-color: #fff;
    }

    .table tbody td {
        vertical-align: middle;
    }

    .table .btn {
        padding: 6px 12px;
        border-radius: 4px;
    }

    .table .btn-success {
        background-color: #008759;
        color: #fff;
        width: 80px;
        border-radius: 25px;
    }

    .table .btn-fail {
        background-color: red;
        color: #fff;
        width: 80px;
        border-radius: 25px;
    }

    .table .btn-danger {
        background-color: #dc3545;
        color: #fff;
    }

    .table .fa {
        margin-right: 5px;
    }

    a:hover {
        color: white;
    }
</style>

<?php get_footer() ?>