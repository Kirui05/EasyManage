<?php

if (isset($_POST['pick'])) {
    update_user_meta( get_current_user_id(), 'profile_picture', $_POST['image'] );
wp_redirect(home_url());
    }

/*
Template Name: Profile pictures Page
*/
?>
<?php wp_head(); ?>
<?php get_header() ?>

<?php
$images = ['https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg', 'https://static.vecteezy.com/system/resources/thumbnails/004/899/680/small/beautiful-blonde-woman-with-makeup-avatar-for-a-beauty-salon-illustration-in-the-cartoon-style-vector.jpg', 'https://media.istockphoto.com/id/1331335517/vector/female-avatar-icon.jpg?s=170667a&w=0&k=20&c=5PQV26-QjlYXqeTsEDVkz40IClWLVabzj6rWr9bTPik=', 'https://media.istockphoto.com/id/1331335536/vector/female-avatar-icon.jpg?s=170667a&w=0&k=20&c=-iyD_53ZEeZPc4SmvmGB1FJXZcHy_fvbJBv6O8HblHs=', 'https://static.vecteezy.com/system/resources/previews/002/002/297/original/beautiful-woman-avatar-character-icon-free-vector.jpg', 'https://st2.depositphotos.com/2703645/7303/v/600/depositphotos_73039841-stock-illustration-male-avatar-icon.jpg', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg', 'https://say4u.invincix.net/assets/images/ava.png', 'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745', 'https://cdn-icons-png.flaticon.com/512/5556/5556512.png'];

?>

<div class="main-container">

    <!-- Pick Profile pictures form -->
    <div class="login">
        <div class="logcover">
            <form action="" method="POST">
                <div class="form">
                    <h2 style="margin-bottom: 35px;">Pick profile picture</h2>
<div style="display: flex;flex-direction:row">
                    <?php
                    $i = 0;
                    foreach ($images as $image) {
                        $i++;
                    ?>
                    <label for="image<?php echo $i ?>">
                            <input type="radio" name="image" id="image<?php echo $i ?>" value="<?php echo $image?>">
                            <?php
                            echo "<img style='height: 50px; width:50px; margin-bottom:25px' src='$image'>";
                            ?>
                        </label>
                    <?php
                    }
                    ?>
                    </div>
                    <button style="width:100px;" type="pick" class="btnlog" name="pick">Pick</button>

                    <style>
                        .main-container {
                            width: 100%;
                            height: 82vh;
                            background-color: #f8f8f8;
                        }
                    </style>

                    <?php get_footer() ?>