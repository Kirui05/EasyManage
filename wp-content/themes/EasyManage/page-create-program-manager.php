<?php
/*
Template Name: Create program manager Page
*/
?>

<?php get_header() ?>

<main>

    <?php get_sidebar() ?>
    <div class="main-container">
        <!-- code to create program manager -->
        <?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Project manager created successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex";</script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if (isset($_POST['create'])) {
            $program_manager_name = $_POST['program_manager_name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            // Create the program manager using the API endpoint
            global $wpdb;
            $wpdb->get_results("SELECT * FROM wp_users WHERE user_login = ''");

            $body = [
                'program_manager_name' => $program_manager_name,
                'email' => $email,
                'password' => $password
            ];

            $args = array(
                'body'        => $body,
                'method' => 'POST',
                'headers'     => array(
                    'Content-Type: application/json',
                    // 'Authorization: Bearer '.$token
                ),
            );

            $response = wp_remote_post('http://localhost/EasyManage/wp-json/easymanage/v2/program_manager/', $args);

            if (!is_wp_error($response)) {
                $response_data = json_decode(wp_remote_retrieve_body($response), true);
                // Display success message
                echo '<p id="message">Project manager created successfully</p>';
                echo '<script> document.getElementById("message").style.display = "flex"; </script>';
                echo '<script> 
                    setTimeout(function(){
                        document.getElementById("message").style.display = "none";
                    }, 3000); 
                </script>';
            } else {
                //Display error message
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
        <!-- Create program manager form -->
        <div class="login">
            <div class="logcover">
                <form class="form" method="post" action="">
                    <h2>Create Program Manager</h2>
                    <div class="input1">
                        <label for="name">Program manager name</label>
                        <div class="icons1">
                            <ion-icon name="person-outline"></ion-icon>
                            <input placeholder="Enter program manager name" type="text" id="name" name="program_manager_name" />
                        </div>
                    </div>
                    <div class="input1">
                        <label for="email">Email address</label>
                        <div class="icons1">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input placeholder="Enter email address" type="email" name="email" id="email" />
                        </div>
                    </div>
                    <div class="input1">
                        <label for="password">Password</label>
                        <div class="icons1">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input placeholder="Enter password" type="password" name="password" id="password" />
                        </div>
                    </div>
                    <div>
                        <!-- <button>create</button> -->
                        <input type="submit" name="create" value="create" class="btnlog">
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
        height: 100%;
        background-color: #f8f8f8;
    }
</style>
<?php get_footer() ?>