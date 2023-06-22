<?php
/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

// program routes to create program managers endpoints
class PMroutes
{
    public function register()
    {
        add_action('rest_api_init', array($this, 'register_api_endpoints'));
    }

    public function register_api_endpoints()
    {
        register_rest_route('easymanage/v2', '/program_manager', array(
            'methods' => 'POST',
            'callback' => array($this, 'create_program_manager'),
        ));

        register_rest_route('easymanage/v2', '/program_manager/(?P<id>\d+)', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_manager'),
        ));

        register_rest_route('easymanage/v2', '/program_manager/(?P<id>\d+)', array(
            'methods' => 'DELETE',
            'callback' => array($this, 'soft_delete_manager'),
        ));
        register_rest_route('easymanage/v2', '/program_manager/(?P<id>\d+)', array(
            'methods' => 'PATCH',
            'callback' => array($this, 'update_program_manager'),
        ));
        register_rest_route('easymanage/v2', '/program_manager', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_all_managers'),
        ));
    }

    public function create_program_manager($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['program_manager_name'],
                'user_email' => $request['email'],
                'user_pass' => 'program_manager',
                'role' => 'program_manager',
                'meta_input' => [
                    'is_deactivated' => 0,
                    'is_deleted' => 0
                ]
            ]
        );
        if (is_wp_error($user)) {
            $error_message = $user->get_error_message();
            return new WP_Error('400', $error_message);
        } else {
            return rest_ensure_response($user);
        }
    }

    public function get_manager($request)
    {
        $manager_id = $request->get_param('id');
        $manager = get_user_by('ID', $manager_id);

        if (!$manager) {
            return new WP_Error('404', 'Program manager not found');
        }
        $response = [
            'status' => 'success',
            'manager' => [
                'id' => $manager->ID,
                'name' => $manager->user_login,
                'email' => $manager->user_email,
                'password' => $manager->user_pass,
            ]
        ];

        return  rest_ensure_response($response);
    }

    public function soft_delete_manager($request)
    {
        $manager_id = $request->get_param('id');
        $manager = get_user_by('ID', $manager_id);

        if (!$manager) {
            return new WP_Error('404', 'Program manager not found');
        }

        // Set the value of "is_deleted" to 1
        update_user_meta($manager_id, 'is_deleted', 1);

        return rest_ensure_response('Program manager deleted successfully.');
    }

    public function get_all_managers($request)
    {
        $managers = get_users(array('role' => 'program_manager'));
        $response = array();
        if ($managers) {
            foreach ($managers as $manager) {
                $manager_id = $manager->ID;
                $response[] = array(
                    'id' => $manager_id,
                    'name' => $manager->user_login,
                    'email' => $manager->user_email,
                );
            }
        }
        if (empty($response)) {
            $response = new WP_Error('404', 'Program managers not found');
        }
        return rest_ensure_response($response);
    }

    // update program manager
    public function update_program_manager($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['program_manager_name'],
                'user_email' => $request['email'],
                'user_pass' => 'program_manager',
                'role' => 'program_manager',
                'meta_input' => [
                    'is_deactivated' => 0,
                    'is_deleted' => 0
                ]
            ]
        );
        if (is_wp_error($user)) {
            $error_message = $user->get_error_message();
            return new WP_Error('400', $error_message);
        } else {
            return rest_ensure_response($user);
        }
    }
}
