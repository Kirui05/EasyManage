<?php
if (isset($_POST['update-trainer'])) {
    update_user_meta(get_current_user_id(), 'update_trainer', $_POST['update']);
    wp_redirect('http://localhost/EasyManage/all-trainers/');
}
/*
Template Name: Update trainer Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">
<!-- code to update trainer -->
<?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Trainer updated successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex"; </script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if (isset($_POST['update'])) {
            $trainerID = $_GET['trainer_id']; // Retrieve the trainer ID from the query parameter
            $display_name = $_POST['display_name'];
            $user_email = $_POST['user_email'];
            $user_pass = $_POST['user_pass'];

            $trainer_data = array(
                'ID' => $trainerID,
                'display_name' => $display_name,
                'user_email' => $user_email,
                'user_pass' => $user_pass
            );

            $response = wp_update_user($trainer_data);

            if (!is_wp_error($response)) {
                // Display success message
                echo '<p id="message">Trainer updated successfully</p>';
                echo '<script> document.getElementById("message").style.display = "flex"; </script>';
                echo '<script> 
                    setTimeout(function(){
                        document.getElementById("message").style.display = "none";
                    }, 3000); 
                </script>';
            } else {
                // Display error message
                echo '<p id="message">Error: ' . $response->get_error_message() . '</p>';
                echo '<script> document.getElementById("message").style.display = "flex"; </script>';
                echo '<script> 
                    setTimeout(function(){
                        document.getElementById("message").style.display = "none";
                    }, 3000);
                </script>';
            }
        }
        ?>
        <!-- end -->
        <!-- Update trainer form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                      <!-- retrieve trainer -->
                      <?php
                    $trainerID = $_GET['trainer_id']; // Retrieve the trainer ID from the query parameter
                    $trainer = get_userdata($trainerID); // Fetch the trainer's data based on the ID

                    // Pre-fill form fields with trainer data
                    $display_name = $trainer->display_name;
                    $status = get_user_meta($trainerID, 'status', true);
                    $user_email = $trainer->user_email;
                    $user_pass = $trainer->user_pass;
                    $role = get_user_meta($trainerID, 'wp_capabilities', true);
                    $role = array_keys($role)[0];
                    ?>
                    <!-- end -->
                    <div class="form">
                        <h2>Update Trainer</h2>
                        <div class="input1">
                            <label for="name">Trainer name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter trainer name" name="display_name" value="<?php echo $display_name; ?>" required>
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
                                <input type="text" placeholder="Enter email address" name="user_email" value="<?php echo $user_email; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="password">Password</label>
                            <div class="icons1">
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                <input placeholder="Enter password" type="password" name="user_pass" id="password" value="<?php echo $user_pass; ?>" />
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