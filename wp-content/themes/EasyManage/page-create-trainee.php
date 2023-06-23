<?php
/*
Template Name: Create trainee Page
*/
?>

<?php get_header()?>

<main>
<?php get_sidebar()?>

<div class="main-container">

<!-- Create trainee form -->
<div class="login">
        <div class="logcover">
            <form action="" method="POST">
                <div class="form">
                    <h2>Create Trainee</h2>

                    <div class="input1">
                        <label for="">Trainee name</label>
                        <div class="icons1">
                            <ion-icon name="person-outline"></ion-icon>
                            <input type="text" placeholder="Enter trainee name" name="name" required>
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
    main{
        display: grid;
        grid-template-columns: 250px 1fr;
        grid-template-rows: 82vh;
    }
    .main-container{
        width: 100%;
        height:82vh;
        background-color: #f8f8f8;
    }
</style>
<?php get_footer()?>