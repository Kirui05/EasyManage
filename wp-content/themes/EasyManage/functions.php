<?php
// Enqueue styles and scripts
function easymanage_script_enqueue()
{
    wp_enqueue_style('customstyle', get_template_directory_uri() . '/custom/styles.css', [], '3.1.1', 'all');
    wp_enqueue_script('customjs', get_template_directory_uri() . '/custom/script.js', [], '1.0.0', true);

    // Bootstrap
    wp_register_style('bootstrapcss', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css', [], '5.2.3', 'all');
    wp_enqueue_style('bootstrapcss');

    wp_register_script('jsbootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js', [], '5.2.3', false);
    wp_enqueue_script('jsbootstrap');
}

add_action('wp_enqueue_scripts', 'easymanage_script_enqueue');

// Custom logout redirect
function custom_logout_redirect()
{
    wp_redirect('http://localhost/easymanage/');
    exit;
}

add_action('wp_logout', 'custom_logout_redirect');

// Validation
function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data, ENT_QUOTES, 'UTF-8');
    return $data;
}

add_action('init', 'add_custom_roles');

// Adding new user roles
function add_custom_roles()
{
    add_role(
        'program_manager',
        __('Program Manager'),
        array(
            'read' => true,
            'edit_posts' => true,
            'delete_posts' => true,
        )
    );

    add_role(
        'trainer',
        __('Trainer'),
        array(
            'read' => true,
            'edit_posts' => true,
            'delete_posts' => true,
        )
    );

    add_role(
        'trainee',
        __('Trainee'),
        array(
            'read' => true,
            'edit_posts' => false,
            'delete_posts' => false,
        )
    );
}

add_filter('show_admin_bar', '__return_false');

// Shortcode to view all users
function display_table_shortcode()
{
    ob_start();
    ?>
    <div class="container">
        <table class="table">
            <thead>
                <tr style="color:#008759">
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $users = get_users(); // Retrieve all users
                $current_user = wp_get_current_user(); // Get the current user
                $current_user_roles = $current_user->roles; // Get the roles of the current user

                foreach ($users as $user) {
                    $name = $user->display_name;
                    $email = $user->user_email;
                    $role = implode(', ', $user->roles);
                    $status = 'Active'; // Assuming all users are active

                    // Check if the current user is an administrator and the user's role is "program_manager"
                    $show_pencil_icon = in_array('administrator', $current_user_roles) && $role === 'program_manager';

                    ?>
                    <tr>
                        <td><i style="color:#000;" class="bi bi-person-circle"></i> <?php echo esc_html($name); ?></td>
                        <td><?php echo esc_html($email); ?></td>
                        <td><?php echo esc_html($role); ?></td>
                        <td><span class="badge bg-success text-white"><?php echo esc_html($status); ?></span></td>
                        <td>
                            <?php if ($show_pencil_icon) : ?>
                                <a href="http://localhost/EasyManage/update-program-manager/"><i style="color:#000;" class="bi bi-pencil-square"></i></a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
    <?php
    return ob_get_clean();
}

add_shortcode('display_table', 'display_table_shortcode');
