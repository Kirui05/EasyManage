<?php
/**
 * @package EasyManage
 */

namespace Inc\Pages;
use WP_Error;

// program routes to create trainees endpoints
class PMroutes
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
    }
    public function create_trainee($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['traineename'],
                'user_email' => $request['email'],
                'user_pass' => 'trainee',
                'role' => 'program_trainee',
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
    //program to get a single trainee
    public function get_trainee($request)
    {
        $trainee_id = $request->get_param('id');
        $trainee = get_users();
        $trainee = array_filter($trainee, function ($user) use ($trainee_id) {
            return
                (string)$user->ID == $trainee_id;
        });
        if (count($trainee) == 0) return new WP_Error('404', 'Hakuna mtu');
        if ($trainee && $trainee[0]->role == 'program-trainee') {
            $response = [
                'status' => 'success',
                'trainee' => [
                    'id' => $trainee[0]->ID,
                    'name' => $trainee[0]->user_login,
                    'email' => $trainee[0]->user_email,
                ]
            ];
        } else {
            $response = new WP_Error('404', 'trainee not found');
        }
        return  rest_ensure_response($response);
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
}