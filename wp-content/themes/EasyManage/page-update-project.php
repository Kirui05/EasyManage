<?php


/*
Template Name: Update project Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <?php
        $project_id = $_GET['project_id'];
        $project = wp_remote_get("http://localhost/EasyManage/wp-json/easymanage/v2/project/" . $project_id, [
            'method' => 'GET'
        ]);
        $project = wp_remote_retrieve_body($project);
        $project = json_decode($project);

        if (isset($_POST['update'])) {
            // Perform the update logic here
            $updated_data = array(
                'project_name' => $_POST['project'],
                'project_description' => $_POST['text'],
                'due_date' => $_POST['date'],
                'assignee' => $_POST['assignee']
            );
        
            // Update the project data using the updated_data array
        
            // Send the updated data to the update project route
            $response = wp_remote_post('http://localhost/EasyManage/wp-json/easymanage/v2/project/'.$project_id, array(
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
                $success_message = 'Project updated successfully!';
            }
        }

        if ($project) {
            // Retrieve project details from the $project object
            $project_name = $project->project_name;
            $project_description = $project->project_description;
            $due_date = $project->due_date;
            $assignee = $project->assignee;
        }
        ?>

        <!-- Update project form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Project</h2>

                        <?php if (isset($success_message)) { ?>
                            <p><?php echo $success_message; ?></p>
                        <?php } ?>

                        <div class="input1">
                            <label for="">Project name</label>
                            <div class="icons1">
                                <ion-icon name="book-outline"></ion-icon>
                                <input type="text" placeholder="Enter project name" name="project" value="<?php echo isset($project_name) ? $project_name : ''; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Project description</label>
                            <div class="icons1">
                                <textarea name="text" placeholder="Enter project description" id="p_desc" cols="74" rows="2" style="border: 1px solid #b8b6b6;resize: none;border-radius: 0.375em 0.375em 0.375em 0.375em;background-color: #f8f8f8;"><?php echo isset($project_description) ? $project_description : ''; ?></textarea>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Due date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="date" value="<?php echo isset($due_date) ? $due_date : ''; ?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Assignee</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter assignee" name="assignee" value="<?php echo isset($assignee) ? $assignee : ''; ?>" required>
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
