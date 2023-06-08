<?php wp_head();

// Get the current user role
$user = wp_get_current_user();
$user_roles = $user->roles;

// Define menu options based on user roles
$admin_menu = array(
    array('icon' => 'bi bi-house', 'text' => 'Home', 'link' => '#'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Add Program Manager', 'link' => '#'),
    array('icon' => 'bi bi-people', 'text' => 'View All Members', 'link' => '#'),
    array('icon' => 'bi bi-file-earmark-text', 'text' => 'View All Projects', 'link' => '#'),
    array('icon' => 'bi bi-gear', 'text' => 'Admin Panel', 'link' => '#')
);

$program_manager_menu = array(
    array('icon' => 'bi bi-house', 'text' => 'Home', 'link' => '#'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Add Trainer', 'link' => '#'),
    array('icon' => 'bi bi-people', 'text' => 'View All Members', 'link' => '#'),
    array('icon' => 'bi bi-file-earmark-text', 'text' => 'View All Projects', 'link' => '#')
);

$trainer_menu = array(
    array('icon' => 'bi bi-house', 'text' => 'Home', 'link' => '#'),
    array('icon' => 'bi bi-person-plus', 'text' => 'Add Trainee', 'link' => '#'),
    array('icon' => 'bi bi-people', 'text' => 'View Team Members', 'link' => '#'),
    array('icon' => 'bi bi-file-earmark-text', 'text' => 'View Team Projects', 'link' => '#'),
    array('icon' => 'bi bi-file-earmark-plus', 'text' => 'Create New Project', 'link' => '#')
);

$trainee_menu = array(
    array('icon' => 'bi bi-house', 'text' => 'Home', 'link' => '#'),
    array('icon' => 'bi bi-file-earmark-check', 'text' => 'Completed Projects', 'link' => '#')
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

<div class="container-fluid" style="z-index: -1;">
    <div class="row">
        <div class="col-md-3 p-0">
            <!-- Sidebar -->
            <div class="sidebar">
                <?php foreach ($menu_options as $option) : ?>
                    <a href="<?php echo $option['link']; ?>" class="menu-link">
                        <i class="<?php echo $option['icon']; ?> menu-icon"></i>
                        <span class="menu-text"><?php echo $option['text']; ?></span>
                    </a>
                <?php endforeach; ?>
                <div class="logout">
                <div class="logout-body">
                    <ul style="list-style-type: none;">
                        <li class="nav-item ">
                            <a class="nav-link logout-text" href="<?php echo wp_logout_url(home_url()); ?>">
                                <i class="bi bi-box-arrow-right logout-icon"></i>Logout
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
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        margin-top: 5rem;
        background-color: #5277D6;
        color: #fff;
        padding: 20px;
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .logout {
        display: flex;
        justify-content: center;
        margin-top: auto;
        border-top: 2px solid #fff;
        width: 100%;
        margin-bottom: 70px;
        color: #ffffff;
    }

    .menu-link {
        display: flex;
        align-items: center;
        color: #fff;
        text-decoration: none;
        margin-bottom: 10px;
        border-bottom: 2px solid #fff;
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
