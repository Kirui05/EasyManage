<?php
if (isset($_POST['update_program_manager'])) {
    update_user_meta(get_current_user_id(), 'update_program_manager', $_POST['update']);
    wp_redirect('http://localhost/EasyManage/all-program-managers/');
}
/*
Template Name: Update program manager Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">
 <!-- code to update program manager -->
 <?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Program_manager updated successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex"; </script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if (isset($_POST['update'])) {
            $program_managerID = $_GET['program_manager_id']; // Retrieve the program_manager ID from the query parameter
            $display_name = $_POST['display_name'];
            $user_email = $_POST['user_email'];
            $user_pass = $_POST['password'];

            $program_manager_data = array(
                'ID' => $program_managerID,
                'display_name' => $display_name,
                'user_email' => $user_email,
                'user_pass' => $user_pass
            );

            $response = wp_update_user($program_manager_data);

            if (!is_wp_error($response)) {
                // Display success message
                echo '<p id="message">Program_manager updated successfully</p>';
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
        <!-- Update program manager form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                      <!-- retrieve program_manager -->
                      <?php
                    $program_managerID = $_GET['program_manager_id']; // Retrieve the program manager ID from the query parameter
                    $program_manager = get_userdata($program_managerID); // Fetch the program manager's data based on the ID

                    // Pre-fill form fields with program_manager data
                 
                    $display_name = $program_manager->display_name;
                    $status = get_user_meta($program_managerID, 'status', true);
                    $user_email = $program_manager->user_email;
                    $user_pass = $program_manager->user_pass;
                    $role = get_user_meta($program_managerID, 'wp_capabilities', true);
                    $role = array_keys($role)[0];
                    ?>
                    <!-- end -->
                    <div class="form">
                        <h2>Update Program Manager</h2>

                        <div class="input1">
                            <label for="">Program manager name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter program manager name" name="display_name" value="<?php echo $display_name; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Email Address</label>
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