<?php
/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

// program routes to create trainees endpoints
class traineeroutes
{
    public function register()
    {
        add_action('rest_api_init', array($this, 'register_api_endpoints'));
    }
    public function register_api_endpoints()
    {
        register_rest_route('easymanage/v2', '/trainee', array(
            'methods' => 'POST',
            'callback' => array($this, 'create_trainee'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
        register_rest_route('easymanage/v2', '/trainee/(?P<id>\d+)', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_trainee'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
        register_rest_route('easymanage/v2', '/trainee', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_all_trainees'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
        register_rest_route('easymanage/v2', '/trainee/(?P<id>\d+)', array(
            'methods' => 'PATCH',
            'callback' => array($this, 'update_trainee'),
        ));
        register_rest_route('easymanage/v2', '/trainee/(?P<id>\d+)', array(
            'methods' => 'DELETE',
            'callback' => array($this, 'soft_delete_trainee'),
        ));
    }
    public function create_trainee($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['trainee_name'],
                'user_email' => $request['email'],
                'user_pass' => 'trainee',
                'role' => 'trainee',
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
            return rest_ensure_response($user->email);
        }
    }
    //program to get one trainee
    public function get_trainee($request)
    {
        $trainee_id = $request->get_param('id');
        $trainee = get_user_by('ID', $trainee_id);

        if (!$trainee) {
            return new WP_Error('404', 'trainee not found');
        }
        $response = [
            'status' => 'success',
            'trainee' => [
                'id' => $trainee->ID,
                'name' => $trainee->user_login,
                'email' => $trainee->user_email,
                'password' => $trainee->user_pass,
            ]
        ];
        return  rest_ensure_response($response);
    }
    public function soft_delete_trainee($request)
    {
        $trainee_id = $request->get_param('id');
        $trainee = get_user_by('ID', $trainee_id);

        if (!$trainee) {
            return new WP_Error('404', 'trainee not found');
        }

        // Set the value of "is_deleted" to 1
        update_user_meta($trainee_id, 'is_deleted', 1);

        return rest_ensure_response('trainee deleted successfully.');
    }
    //program to get all trainees
    public function get_all_trainees($request)
    {
        $trainees = get_users(array('role' => 'trainee'));
        $response = array();
        if ($trainees) {
            foreach ($trainees as $trainee) {
                $trainee_id = $trainee->ID;
                $response[] = array(
                    'id' => $trainee_id,
                    'name' => $trainee->user_login,
                    'email' => $trainee->user_email,
                );
            }
        }
        if (empty($response)) {
            $response = new WP_Error('404', 'trainees not found');
        }
        return rest_ensure_response($response);
    }

    // update trainee
    public function update_trainee($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['trainee_name'],
                'user_email' => $request['email'],
                'user_pass' => 'trainee',
                'role' => 'trainee',
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
            return rest_ensure_response($user->email);
        }
    }
}