<?php
/*
Template Name: Login Page
*/
?>

<?php get_header()?>

<div class="main-container">

<!-- Login form -->
<div class="login">
    <div class="logcover">
        <div class="left">
            <h1>Welcome!</h1>
            <p>To keep connected with us <br> please login with your personal info.</p>
        </div>
        <form action="" method="POST">
            <div class="form">
                <h2>Login</h2>

                <div class="input1">
                    <label for="">Email Address</label>
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
                <button type="submit" class="btnlog" name="login-submit">Login</button>
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
