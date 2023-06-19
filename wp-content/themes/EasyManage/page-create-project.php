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
                                <input type="text" placeholder="Enter project name" name="project" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Project description</label>
                            <div class="icons1">
                                <textarea name="text" placeholder="Enter project description" id="p_desc" cols="74" rows="2" style="border: 1px solid #b8b6b6;resize: none;	border-radius: 0.375em 0.375em 0.375em 0.375em;	background-color: #f8f8f8;"></textarea>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Due date</label>
                            <div class="icons1">
                                <ion-icon name="calendar-outline"></ion-icon>
                                <input type="date" placeholder="" name="date" min="<?php echo esc_attr(date('Y-m-d'));?>" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Assignee</label>
                            <select class="assignee" id="assignee" name="assignee" multiple>
                                <?php foreach ($trainees as $trainee) : ?>
                                    <option value="<?php echo esc_attr($trainee->ID); ?>"><?php echo esc_html($trainee->display_name); ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <button type="submit" class="btnlog" name="login-submit">Create</button>
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
