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
        <!-- code to update trainee -->
        <?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Trainee updated successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex"; </script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if (isset($_POST['update'])) {
            $traineeID = $_GET['trainee_id']; // Retrieve the trainee ID from the query parameter
            $display_name = $_POST['display_name'];
            $user_email = $_POST['user_email'];
            $user_pass = $_POST['password'];

            $trainee_data = array(
                'ID' => $traineeID,
                'display_name' => $display_name,
                'user_email' => $user_email,
                'user_pass' => $user_pass
            );

            $response = wp_update_user($trainee_data);

            if (!is_wp_error($response)) {
                // Display success message
                echo '<p id="message">Trainee updated successfully</p>';
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
        <!-- Update trainee form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <!-- retrieve trainee -->
                    <?php
                    $traineeID = $_GET['trainee_id']; // Retrieve the trainee ID from the query parameter
                    $trainee = get_userdata($traineeID); // Fetch the trainee's data based on the ID

                    // Pre-fill form fields with trainee data
                    $display_name = $trainee->display_name;
                    $status = get_user_meta($traineeID, 'status', true);
                    $user_email = $trainee->user_email;
                    $user_pass = $trainee->user_pass;
                    $role = get_user_meta($traineeID, 'wp_capabilities', true);
                    $role = array_keys($role)[0];
                    ?>
                    <!-- end -->
                    <div class="form">
                        <h2>Update Trainee</h2>

                        <div class="input1">
                            <label for="">Trainee name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter trainee name" name="display_name" value="<?php echo $display_name; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Email address</label>
                            <div class="icons1">
                                <ion-icon name="mail-outline"></ion-icon>
                                <input type="text" placeholder="Enter email address" name="user_email" value="<?php echo $user_email; ?>" required>
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
