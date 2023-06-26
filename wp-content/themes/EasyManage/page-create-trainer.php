<?php
/*
Template Name: Create trainer Page
*/
?>

<?php get_header() ?>
<main>
    <?php get_sidebar() ?>

    <div class="main-container">
       <!-- code to create trainer -->
<?php
    global $success_msg;

    if ($success_msg) {
        echo "<p id='message'>Trainer created successfully</p>";
        echo '<script> document.getElementById("message").style.display = "flex"; </script>';
        echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['create'])) {
        $trainer_name = $_POST['trainer_name'];
        $stack = $_POST['stack'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Create the trainer using the API endpoint

        $body = [
            'trainer_name' => $trainer_name,
            'stack' => $stack,
            'email' => $email,
            'password' => $password
        ];

        $args = [
            'body'        => $body,
            'timeout'     => '5',
            // 'redirection' => '5',
        ];

        $response = $response = wp_remote_post( 'http://localhost/EasyManage/wp-json/easymanage/v2/trainer', $args );
        // var_dump($response);



        if (!is_wp_error($response)) {
            $response_data = json_decode(wp_remote_retrieve_body($response), true);
            // Display success message
            echo '<p id="message">Trainer created successfully</p>';
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
        <!-- Create trainer form -->
        <div class="login">
            <div class="logcover">
                <form class="form" method="post" action="">
                    <h2>Create Trainer</h2>
                    <div class="input1">
                        <label for="name">Trainer name</label>
                        <div class="icons1">
                            <ion-icon name="person-outline"></ion-icon>
                            <input placeholder="Enter trainer name" type="text" id="name" name="trainer_name" />
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
                    <button type="submit" class="btnlog" name="create" value="create">Create</button>
                        <!-- <input type="submit" name="create" value="create" class="btnlog"> -->
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
