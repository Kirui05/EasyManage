<?php

//
function easymanage_script_enqueue()
{
    wp_enqueue_style('customstyle', get_template_directory_uri() . '/custom/styles.css', [], '3.1.1', 'all');
    wp_enqueue_script('customjs', get_template_directory_uri() . '/custom/script.js', [], '1.0.0', true);

    //bootstrap
    wp_register_style('bootstrapcss', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css', [], '5.2.3', 'all');

    wp_enqueue_style('bootstrapcss');

    wp_register_script('jsbootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js', [], '5.2.3', false);
    wp_enqueue_script('jsbootstrap');
}

add_action('wp_enqueue_scripts', 'easymanage_script_enqueue');

function custom_logout_redirect()
{
    wp_redirect("http://localhost/EasyManage/login/");
    exit;
}
add_action('wp_logout', 'custom_logout_redirect');

// adding new user roles
function add_custom_roles()
{
    add_role(
        'program_manager',
        _('Program Manager'),
        array(
            'read' => true,
            'edit_posts' => true,
            'delete_posts' => true,
        )
    );

    add_role(
        'trainer',
        _('Trainer'),
        array(
            'read' => true,
            'edit_posts' => true,
            'delete_posts' => true,
        )
    );

    add_role(
        'trainee',
        _('Trainee'),
        array(
            'read' => true,
            'edit_posts' => false,
            'delete_posts' => false,
        )
    );
}

add_action('init', 'add_custom_roles');