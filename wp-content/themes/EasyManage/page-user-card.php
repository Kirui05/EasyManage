<?php
/*
Template Name: User card page
*/
?>

<?php get_header() ?>

<!-- user card -->

<main>
    <?php get_sidebar() ?>

    <div class="main-container">
        <!-- user card -->
        <title>User Card</title>

        <div class="card">
            <h2>User Details</h2>
            <?php
                // Retrieve current user data
                $current_user = wp_get_current_user();
                $user_name = $current_user->display_name;
                $user_email = $current_user->user_email;
                $user_role = implode(', ', $current_user->roles);
            ?>
            <p><strong>Name:</strong> <?php echo $user_name; ?></p>
            <p><strong>Email:</strong> <?php echo $user_email; ?></p>
            <p><strong>Role:</strong> <?php echo $user_role; ?></p>
        </div>

    </div>

</main>

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
    }

    /* user card styling */
    .card {
        background-color: #fff;
        border: none;
        border-radius: 10px;
        padding: 100px;
        width: 500px;
        height: 350px;
        margin-left: 300px;
        margin-top: 100px;
    }

    .card h2 {
        margin-top: 0;
        color: #008759;
    }

    .card p {
        margin: 5px 0;
    }
</style>
<?php get_footer() ?>
