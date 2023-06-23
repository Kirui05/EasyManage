<?php
/*
Template Name: Create program manager Page
*/
?>

<?php get_header() ?>

<main>

    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- Create program manager form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST" id="create-manager-form">
                    <div class="form">
                        <h2>Create Program Manager</h2>

                        <div class="input1">
                            <label for="">Program manager name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter program manager name" name="name" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Email address</label>
                            <div class="icons1">
                                <ion-icon name="mail-outline"></ion-icon>
                                <input type="text" placeholder="Enter email address" name="email" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="">Phone number</label>
                            <div class="icons1">
                                <ion-icon name="call-outline"></ion-icon>
                                <input type="number" placeholder="Enter phone number" name="number" required>
                            </div>
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
        height: 100%;
        background-color: #f8f8f8;
    }
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#create-manager-form').submit(function(event) {
            event.preventDefault(); // Prevent the form from submitting normally

            // Collect form data
            var formData = {
                name: $('input[name="name"]').val(),
                email: $('input[name="email"]').val(),
                number: $('input[name="number"]').val()
            };

            // Send POST request to API endpoint
            $.ajax({
                url: 'http://localhost/EasyManage/wp-json/easymanage/v2/program_manager',
                type: 'POST',
                data: JSON.stringify(formData),
                contentType: 'application/json',
                success: function(response) {
                    // Handle success response
                    console.log('Manager created successfully:', response);
                    // Display success message or redirect to a success page
                },
                error: function(xhr, status, error) {
                    // Handle error response
                    console.log('Error creating manager:', error);
                    // Display error message to the user
                }
            });
        });
    });
</script>

<?php get_footer() ?>
