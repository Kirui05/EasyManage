<?php
/*
Template Name: Create stack Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar();
    $trainers = get_users(['role' => 'trainer']);
    ?>

    <div class="main-container">
        <!-- code to create stack -->
        <?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Stack created successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex"; </script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['create'])) {
            $stack_name = $_POST['stack_name'];
            $location = $_POST['location'];
            $assignee_id = $_POST['assignee'];
            $start_date = $_POST['start_date'];
            $end_date = $_POST['end_date'];

            // Get the assignee's name
            $assignee = get_userdata($assignee_id);
            $assignee_name = $assignee->display_name;

            // Create the stack using the API endpoint

            $body = [
                'stack_name' => $stack_name,
                'location' => $location,
                'assignee' => $assignee_name,
                'start_date' => $start_date,
                'end_date' => $end_date
            ];

            $args = [
                'body'        => $body,
                'timeout'     => '5',
                // 'redirection' => '5',
            ];

            $response = $response = wp_remote_post('http://localhost/easymanage/wp-json/easymanage/v2/stack', $args);
            // var_dump($response);


            if (!is_wp_error($response)) {
                $response_data = json_decode(wp_remote_retrieve_body($response), true);
                // Display success message
                echo '<p id="message">Stack created successfully</p>';
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
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Create Stack</h2>

                        <div class="input1">
                            <label for="">Stack name</label>
                            <div class="icons1">
                                <ion-icon name="logo-stackoverflow"></ion-icon>
                                <input type="text" placeholder="Enter stack name" name="stack_name" required>
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
                                <?php foreach ($trainers as $trainer) :
                                    $trainer_name = $trainer->display_name;
                                    $trainer_id = $trainer->ID;
                                ?>
                                    <option value="<?php echo esc_attr($trainer_id); ?>"><?php echo esc_html($trainer_name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="input1">
                            <label for="">Start date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="start_date" min="<?php echo esc_attr(date('Y-m-d')); ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">End date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="end_date" min="<?php echo esc_attr(date('Y-m-d')); ?>" required>
                            </div>
                        </div>
                        <button type="submit" class="btnlog" name="create" value="create">Create</button>
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
