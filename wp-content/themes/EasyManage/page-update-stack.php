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
        <!-- update stack -->
        <?php
        $stack_id = isset($_GET['stack_id']) ? $_GET['stack_id'] : '';
        $stack = wp_remote_get("http://localhost/EasyManage/wp-json/easymanage/v2/stack/" . $stack_id, [
            'method' => 'GET'
        ]);
        $stack = wp_remote_retrieve_body($stack);
        $stack = json_decode($stack);

        if (isset($_POST['updatestack'])) {
            // Perform the update logic here
            $updated_data = array(
                'stack_name' => $_POST['stack_name'],
                'location' => $_POST['location'],
                'assignee' => $_POST['assignee'],
                'start_date' => $_POST['start_date'],
                'end_date' => $_POST['end_date'],
            );

            // Update the stack data using the updated_data array

            // Send the updated data to the update stack route
            $response = wp_remote_post('http://localhost/EasyManage/wp-json/easymanage/v2/stack/' . $stack_id, array(
                'method' => 'PATCH',
                'headers' => array(
                    'Content-Type' => 'application/json',
                ),
                'body' => json_encode($updated_data),
            ));

            // Check if the update was successful
            if (is_wp_error($response)) {
                // Handle the error case
                echo 'Update failed: ' . $response->get_error_message();
            } else {
                // Handle the success case
                $success_message = 'Stack updated successfully!';
            }
        }

        if ($stack) {
            // Retrieve stack details from the $stack object
            $stack_name = $stack->stack_name;
            $location = $stack->location;
            $assignee = $stack->assignee;
            $start_date = $stack->start_date;
            $end_date = $stack->end_date;
        }
        ?>
        <!-- End -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Stack</h2>

                        <div class="input1">
                            <label for="stack_name">Stack name</label>
                            <div class="icons1">
                                <ion-icon name="logo-stackoverflow"></ion-icon>
                                <input type="text" id="stack_name" placeholder="Enter stack name" name="stack_name" value="<?php echo isset($stack_name) ? esc_attr($stack_name) : ''; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="location">Location</label>
                            <div class="icons1">
                                <ion-icon name="location-outline"></ion-icon>
                                <input type="text" id="location" placeholder="Enter location" name="location" value="<?php echo isset($location) ? esc_attr($location) : ''; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="assignee">Assignee</label>
                            <select class="assignee" id="assignee" name="assignee">
                                <?php foreach ($trainers as $trainer) : ?>
                                    <option value="<?php echo esc_attr($trainer->display_name); ?>" <?php if (is_array($assignee) && in_array($trainer->ID, $assignee)) echo 'selected'; ?>><?php echo esc_html($trainer->display_name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="input1">
                            <label for="start_date">Start date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" id="start_date" placeholder="" name="start_date" min="<?php echo esc_attr(date('Y-m-d')); ?>" value="<?php echo isset($start_date) ? esc_attr($start_date) : ''; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="end_date">End date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" id="end_date" placeholder="" name="end_date" min="<?php echo esc_attr(date('Y-m-d')); ?>" value="<?php echo isset($end_date) ? esc_attr($end_date) : ''; ?>" required>
                            </div>
                        </div>
                        <div>
                            <input type="submit" name="updatestack" value="Update" class="btnlog">
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
        background-color: #e6e6e6;
    }

    .login {
        height: 100%;
        overflow-y: scroll;
    }
</style>
<?php get_footer() ?>
