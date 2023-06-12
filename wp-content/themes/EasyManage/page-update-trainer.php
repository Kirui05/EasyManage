<?php
/*
Template Name: Update trainer Page
*/
?>

<?php get_header() ?>

<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- Update trainer form -->
        <div class="login">
            <div class="logcover">
                <form action="" method="POST">
                    <div class="form">
                        <h2>Update Trainer</h2>

                        <div class="input1">
                            <label for="">Trainer name</label>
                            <div class="icons1">
                                <ion-icon name="person-outline"></ion-icon>
                                <input type="text" placeholder="Enter trainer name" name="name" required>
                            </div>
                        </div>
                        <div class="input1">
                            <label for="stack">Stack</label>
                            <select class="stack" id="stack" name="stack">
                                <option value="stack1">Stack 1</option>
                                <option value="stack2">Stack 2</option>
                                <option value="stack3">Stack 3</option>
                            </select>
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
                        <button type="submit" class="btnlog" name="login-submit">Update</button>
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