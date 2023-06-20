<?php
/*
Template Name: Update stack Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar();
    $trainers_query = new WP_User_Query([
        'role' => 'trainer'
    ]);

    $trainers = $trainers_query->get_results();
    ?>

    <div class="main-container">
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Stack</h2>

                        <div class="input1">
                            <label for="">Stack name</label>
                            <div class="icons1">
                                <ion-icon name="logo-stackoverflow"></ion-icon>
                                <input type="text" placeholder="Enter stack name" name="stack" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Location</label>
                            <div class="icons1">
                                <ion-icon name="location-outline"></ion-icon>
                                <input type="text" placeholder="Enter location" name="location" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Assignee</label>
                            <select class="assignee" id="assignee" name="assignee" multiple>
                                <?php foreach ($trainers as $trainer) : ?>
                                    <option value="<?php echo esc_attr($trainer->ID); ?>"><?php echo esc_html($trainer->display_name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="input1">
                            <label for="">Start date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="date" min="<?php echo esc_attr(date('Y-m-d')); ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">End date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="date" min="<?php echo esc_attr(date('Y-m-d')); ?>" required>
                            </div>
                        </div>
                        <button type="submit" class="btnlog" name="login-submit">Update</button>
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
        background-color: #e6e6e6;
    }

    .login {
        height: 100%;
        overflow-y: scroll;
    }
</style>
<?php get_footer() ?>
