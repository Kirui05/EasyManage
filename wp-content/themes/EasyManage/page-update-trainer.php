<?php
/*
Template Name: Update trainer Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- Update trainer form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Trainer</h2>
                        <div class="input1">
                            <label for="name">Trainer name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter trainer name" name="name" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="stack">Stack</label>
                            <select class="stack" id="stack" name="stack">
                                <?php
                                global $wpdb;
                                $stacks = $wpdb->get_results("SELECT * FROM wp_stacks");
                                foreach ($stacks as $stack) {
                                    echo '<option value="' . $stack->id . '">' . $stack->stack_name . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="input1">
                            <label for="email">Email address</label>
                            <div class="icons1">
                                <ion-icon name="mail-outline"></ion-icon>
                                <input type="text" placeholder="Enter email address" name="email" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="password">Password</label>
                            <div class="icons1">
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                <input placeholder="Enter password" type="password" name="password" id="password" value="<?php echo $user_pass; ?>" />
                            </div>
                        </div>
                        <div>
                            <input type="submit" name="update" value="Update" class="btnlog">
                        </div>
                    </div>
                </form>
            </div>
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
</style>
<?php get_footer() ?>