<?php wp_head();

// Get the current user role
$user = wp_get_current_user();
$user_roles = $user->roles;

// Define menu options based on user roles
$admin_menu = array(
    array('icon' => 'bi bi-grid', 'text' => 'Dashboard', 'link' => 'http://localhost/EasyManage/dashboard/'),
    array('icon' => 'bi bi-people', 'text' => 'View All Users', 'link' => 'http://localhost/EasyManage/all-users/'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Create Program Manager', 'link' => 'http://localhost/EasyManage/create-program-manager/'),
);

$program_manager_menu = array(
    array('icon' => 'bi bi-grid', 'text' => 'Dashboard', 'link' => 'http://localhost/EasyManage/pm-dashboard/'),
    array('icon' => 'bi bi-people', 'text' => 'View All Trainers', 'link' => 'http://localhost/EasyManage/all-trainers/'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Create Trainer', 'link' => 'http://localhost/EasyManage/create-trainer/'),
);

$trainer_menu = array(
    array('icon' => 'bi bi-grid', 'text' => 'Dashboard', 'link' => 'http://localhost/EasyManage/trainer-dashboard/'),
    array('icon' => 'bi bi-people', 'text' => 'View All Trainees', 'link' => 'http://localhost/EasyManage/all-trainees/'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Create Trainee', 'link' => 'http://localhost/EasyManage/create-trainee/'),
    array('icon' => 'bi bi-file-earmark-plus', 'text' => 'Create Project', 'link' => 'http://localhost/EasyManage/create-project/'),
    array('icon' => 'bi bi-file-earmark-text', 'text' => 'View All Projects', 'link' => 'http://localhost/EasyManage/projects/'),
);

$trainee_menu = array(
    array('icon' => 'bi bi-grid', 'text' => 'Dashboard', 'link' => 'http://localhost/EasyManage/trainee-dashboard/'),
    array('icon' => 'bi bi-file-earmark-text', 'text' => 'View Projects Assigned', 'link' => 'http://localhost/EasyManage/projects-assigned/'),
);

$menu_options = array();

// Set menu options based on user role
if (in_array('administrator', $user_roles)) {
    $menu_options = $admin_menu;
} elseif (in_array('program_manager', $user_roles)) {
    $menu_options = $program_manager_menu;
} elseif (in_array('trainer', $user_roles)) {
    $menu_options = $trainer_menu;
} elseif (in_array('trainee', $user_roles)) {
    $menu_options = $trainee_menu;
}

?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <div class="container-fluid" style="z-index: 1; height: 100%;">
        <div class="row" style="height: 100%;">
            <div class="p-0" style="height: 100%;">
                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Profile Picture -->
                    <?php
                    $user_id = get_current_user_id();
                    $previous_profile_picture = get_user_meta( $user_id, 'profile_picture', true );
                    if ( empty( $previous_profile_picture ) ) {
                        $previous_profile_picture = 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg';
                        add_user_meta( $user_id, 'profile_picture', $previous_profile_picture);
                    }
?>

<form action="" method="post">

    <div class="profile-picture">
        <img src="<?php echo $previous_profile_picture;?>" alt="Profile Picture" class="profile-image">
        <label for="prof" class="change-picture-link"> <a style="color: #fff;" href="http://localhost/EasyManage/profile-pictures-page/">Change Picture</a></label>
    </div>
</form>
                    <?php foreach ($menu_options as $option) : ?>
                        <a href="<?php echo $option['link']; ?>" class="menu-link">
                            <i class="<?php echo $option['icon']; ?> menu-icon"></i>
                            <span class="menu-text"><?php echo $option['text']; ?></span>
                        </a>
                    <?php endforeach; ?>
                    <div class="logout">
                        <div class="logout-body">
                            <ul style="list-style-type: none;">
                                <li class="nav-item">
                                    <a class="nav-link logout-text"  href="<?php echo wp_logout_url(home_url()); ?>">
                                        <i class="bi bi-box-arrow-left logout-icon"></i>Logout
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <style>
        .sidebar {
            background-color: #008759;
            color: #fff;
            padding: 20px;
            height: 100%;
            width: 100%;
            display: flex;
            flex-direction: column;
        }

        .profile-picture {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 25px;
        }

        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }

        .change-picture-link {
            color: #fff;
            font-size: smaller;
            text-decoration: underline;
            margin-bottom: 5px;
        }

        .logout {
            display: flex;
            margin-top: auto;
            width: 100%;
            font-size: 20px;
            color: #ffffff;
        }

        .menu-link {
            display: flex;
            align-items: center;
            color: #fff;
            text-decoration: none;
            margin-bottom: 10px;
        }
        a:hover {
      color: white;
    }
        .menu-icon {
            font-size: 20px;
            margin-right: 10px;
        }

        .menu-text {
            font-size: 16px;
        }

        .bi {
            display: inline-block;
            font-size: 1.5rem;
            font-weight: 400;
            line-height: 1;
            text-align: center;
            text-transform: none;
            vertical-align: -.125em;
            color: #ffffff;
        }

        /* Add additional styling for specific menu options */
        .menu-link.home .menu-icon {
            color: #ff0000;
        }

        .menu-link.add-program-manager .menu-icon {
            color: #00ff00;
        }

        /* Add similar styling for other menu options */
    </style>

    <?php wp_footer(); ?>
</body>
</html>
