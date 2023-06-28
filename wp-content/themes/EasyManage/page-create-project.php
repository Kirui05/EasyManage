<?php
/*
Template Name: Create project Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar(); 
    $trainees_query = new WP_User_Query([
        'role' => 'trainee'
    ]);

    $trainees = $trainees_query->get_results();
    ?>

    <div class="main-container">
        <!-- code to create project -->
        <?php
        global $success_msg;

        if ($success_msg) {
            echo "<p id='message'>Project created successfully</p>";
            echo '<script> document.getElementById("message").style.display = "flex"; </script>';
            echo '<script> 
                setTimeout(function(){
                    document.getElementById("message").style.display ="none";
                }, 3000);
            </script>';
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['create'])) {
            $project_name = $_POST['project_name'];
            $due_date = $_POST['due_date'];
            $project_description = $_POST['project_description'];
            $assignee_ids = $_POST['assignee']; // Updated variable name

            $assignees = array(); // Array to store assignee names

            // Fetch assignee names based on their IDs
            foreach ($assignee_ids as $assignee_id) {
                $trainee = get_userdata($assignee_id);
                if ($trainee) {
                    $assignees[] = $trainee->display_name;
                }
            }

            // Create the stack using the API endpoint
            $body = [
                'project_name' => $project_name,
                'due_date' => $due_date,
                'project_description' => $project_description,
                'assignee' => implode(', ', $assignees), // Convert the array to a string
            ];
            $args = [
                'body'        => $body,
                'timeout'     => '5',
                // 'redirection' => '5',
            ];

            $response = $response = wp_remote_post('http://localhost/EasyManage/wp-json/easymanage/v2/project', $args);
            // var_dump($response);


            if (!is_wp_error($response)) {
                $response_data = json_decode(wp_remote_retrieve_body($response), true);
                // Display success message
                echo '<p id="message">Project created successfully</p>';
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
        <!-- Create project form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Create Project</h2>

                        <div class="input1">
                            <label for="">Project name</label>
                            <div class="icons1">
                                <ion-icon name="book-outline"></ion-icon>
                                <input type="text" placeholder="Enter project name" name="project_name" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Project description</label>
                            <div class="icons1">
                                <textarea name="project_description" placeholder="Enter project description" id="p_desc" cols="74" rows="2" style="border: 1px solid #b8b6b6;resize: none;	border-radius: 0.375em 0.375em 0.375em 0.375em;	background-color: #f8f8f8;"></textarea>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Due date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="due_date" min="<?php echo esc_attr(date('Y-m-d'));?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Assignee</label>
                            <select class="assignee" id="assignee" name="assignee[]" multiple> <!-- Updated name and added [] to make it an array -->
                                <?php foreach ($trainees as $trainee) : ?>
                                    <option value="<?php echo esc_attr($trainee->ID); ?>"><?php echo esc_html($trainee->display_name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <button type="submit" class="btnlog" name="create">Create</button>
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
</style>
<?php get_footer() ?>
