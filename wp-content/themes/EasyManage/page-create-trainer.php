<?php
/*
Template Name: Create trainer Page
*/
?>

<?php get_header() ?>
<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- Create trainer form -->
        <div class="login">
            <div class="logcover">

                <form class="form" method="post" action="">
                    <h2>Create Trainer</h2>
                    <div class="input1">
                        <label for="name">Trainer name</label>
                        <div class="icons1">
                            <ion-icon name="person-outline"></ion-icon>
                            <input placeholder="Enter program manager name" type="text" id="name" name="managername" />
                        </div>
                    </div>
                    <div class="input1">
                        <label for="stack">Stack</label>
                        <select class="stack" id="stack" name="stack">
                            <option value="stack1">WordPress</option>
                            <option value="stack2">Angular</option>
                            <option value="stack3">C#</option>
                            <option value="stack3">QA/QE</option>
                        </select>
                    </div>
                    <div class="input1">
                        <label for="email">Email address</label>
                        <div class="icons1">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input placeholder="Enter email address" type="email" name="email" id="email" />
                        </div>
                    </div>
                    <div class="input1">
                        <label for="phone">Password</label>
                        <div class="icons1">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input placeholder="Enter password" type="password" name="password" id="password" />
                        </div>
                    </div>
                    <div>
                        <input type="submit" name="create" value="create" class="btnlog">
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