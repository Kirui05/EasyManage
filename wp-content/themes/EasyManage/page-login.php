<?php
/*
Template Name: Login Page
*/
?>

<?php
$error_message = '';

// Tracking login attempts

function track_login_attempts($username, $password)
{
    if (!session_id()) {
        session_start();
    }
    if (!isset($_SESSION['login_attempts'])) {
        $_SESSION['login_attempts'] = 0;
    }
    $_SESSION['login_attempts']++;

    // Checking if the maximum no. of login attempts has been reached

    if ($_SESSION['login_attempts'] >= 3) {
        if (isset($_SESSION['login_attempt_time']) && time() - $_SESSION['login_attempt_time'] < 60) {
            wp_die('Too many login attempts. Please try again after 1 minute.');
        }

        // variable to reset login_attempts session
        $_SESSION['login_attempts'] = 0;
    }
    $_SESSION['login_attempt_time'] = time();
}
add_action('wp_authenticate', 'track_login_attempts', 1, 2);
if (is_user_logged_in()) {
    $user = wp_get_current_user();
    $user_roles = $user->roles;
    if (in_array('administrator', $user_roles)) {
        wp_redirect('http://localhost/EasyManage/dashboard/');
        exit;
    } elseif (in_array('program_manager', $user_roles)) {
        wp_redirect('http://localhost/EasyManage/PM-dashboard/');
        exit;
    } elseif (in_array('trainer', $user_roles)) {
        wp_redirect('http://localhost/EasyManage/trainer-dashboard/');
        exit;
    } elseif (in_array('trainee', $user_roles)) {
        wp_redirect('http://localhost/EasyManage/trainee-dashboard/');
        exit;
    }
}

if (isset($_POST['login'])) {
    $employee_id = $_POST['email'];
    $user_password = $_POST['password'];

    // Calling the track_login_attempts function passing the username and password

    track_login_attempts($employee_id, $user_password);
    $user = get_user_by('email', $employee_id);
    if (!$user) {
        $error_message = "Invalid user email.";
    } elseif (!wp_check_password($user_password, $user->user_pass, $user->ID)) {
        $error_message = "Invalid password.";
    } else {
        wp_set_current_user($user->ID);
        wp_set_auth_cookie($user->ID);
        do_action('wp_login', $user->user_login, $user);
        $user_roles = $user->roles;
        $redirect_url = '';

        if (in_array('administrator', $user_roles)) {
            $redirect_url = 'http://localhost/EasyManage/dashboard/';
        } elseif (in_array('program_manager', $user_roles)) {
            $redirect_url = 'http://localhost/EasyManage/PM-dashboard/';
        } elseif (in_array('trainer', $user_roles)) {
            $redirect_url = 'http://localhost/EasyManage/trainer-dashboard/';
        } elseif (in_array('trainee', $user_roles)) {
            $redirect_url = 'http://localhost/EasyManage/trainee-dashboard/';
        }

        $redirect_url .= '?user_id=' . $user->ID;
        wp_redirect($redirect_url);
        exit;
    }
}
?>

<?php wp_head(); ?>
<?php get_header() ?>

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
                    <button type="submit" class="btnlog" name="login">Login</button>
                </div>
            </form>
        </div>
    </div>

</div>
<style>
    .main-container {
        width: 100%;
        height: 82vh;
        background-color: #f8f8f8;
    }
</style>

<?php get_footer() ?>