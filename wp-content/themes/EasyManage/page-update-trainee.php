<?php

if (isset($_POST['update-trainee'])) {
    update_user_meta(get_current_user_id(), 'update_trainee', $_POST['update']);
    wp_redirect('http://localhost/EasyManage/all-trainees/');
}
/*
Template Name: Update trainee Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- Update trainee form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Trainee</h2>

                        <div class="input1">
                            <label for="">Trainee name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter trainee name" name="name" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Email address</label>
                            <div class="icons1">
                                <ion-icon name="mail-outline"></ion-icon>
                                <input type="text" placeholder="Enter email address" name="email" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Phone number</label>
                            <div class="icons1">
                                <ion-icon name="call-outline"></ion-icon>
                                <input type="number" placeholder="Enter phone number" name="number" required>
                            </div>
                        </div>
                        <button type="submit" class="btnlog" name="update-trainee">Update</button>
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