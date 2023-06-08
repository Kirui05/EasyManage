<?php
/*
Template Name: Create trainee Page
*/
?>

<?php get_header()?>

<div class="main-container">

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
                        <label for="">Password</label>
                        <div class="icons1">
                            <ion-icon name="lock-open-outline"></ion-icon>
                            <input type="password" placeholder="Enter password" name="password" required>
                        </div>
                    </div>
                    <button type="submit" class="btnlog" name="login-submit">Create</button>
                </div>
            </form>
        </div>
    </div>

</div>


<style>
    .main-container{
        width: 100%;
        height:83vh;
        background-color: #e6e6e6;
    }
</style>
<?php get_footer()?>