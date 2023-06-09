<?php
/*
Template Name: Create trainer Page
*/
?>

<?php get_header() ?>
<?php get_sidebar()?>

<div class="main-container">

<!-- Create trainer form -->
    <div class="login">
        <div class="logcover">
            <form action="" method="POST">
                <div class="form">
                    <h2>Create Trainer</h2>

                    <div class="input1">
                        <label for="">Trainer name</label>
                        <div class="icons1">
                            <ion-icon name="person-outline"></ion-icon>
                            <input type="text" placeholder="Enter trainer name" name="name" required>
                        </div>
                    </div>
                    <div class="input1">
                        <label for="">Stack</label>
                        <div class="icons1">
                            <ion-icon name="logo-stackoverflow"></ion-icon>
                            <input type="text" placeholder="Enter stack" name="stack" required>
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
    main{
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