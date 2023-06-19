<?php
/**
 * @package EasyManage
 */

namespace Inc\Pages;
use WP_Error;

// program routes to create trainers endpoints
class PMroutes
{
    public function register()
    {
        add_action('rest_api_init', array($this, 'register_api_endpoints'));
    }
    public function register_api_endpoints()
    {
        register_rest_route('easymanage/v2', '/trainer', array(
            'methods' => 'POST',
            'callback' => array($this, 'create_trainer'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
        register_rest_route('easymanage/v2', '/trainer/(?P<id>\d+)', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_trainer'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
        register_rest_route('easymanage/v2', '/trainer', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_all_trainers'),
            // 'permission_callback' => function () {
            //     return current_user_can('manage_options');
            // }
        ));
    }
    public function create_trainer($request)
    {
        $user = wp_insert_user(
            [
                'user_login' => $request['trainername'],
                'user_email' => $request['email'],
                'user_pass' => 'trainer',
                'role' => 'program_trainer',
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
    //program to get a single trainer
    public function get_trainer($request)
    {
        $trainer_id = $request->get_param('id');
        $trainer = get_users();
        $trainer = array_filter($trainer, function ($user) use ($trainer_id) {
            return
                (string)$user->ID == $trainer_id;
        });
        if (count($trainer) == 0) return new WP_Error('404', 'Hakuna mtu');
        if ($trainer && $trainer[0]->role == 'program-trainer') {
            $response = [
                'status' => 'success',
                'trainer' => [
                    'id' => $trainer[0]->ID,
                    'name' => $trainer[0]->user_login,
                    'email' => $trainer[0]->user_email,
                ]
            ];
        } else {
            $response = new WP_Error('404', 'trainer not found');
        }
        return  rest_ensure_response($response);
    }
    //program to get all trainers
    public function get_all_trainers($request)
    {
        $trainers = get_users(array('role' => 'trainer'));
        $response = array();
        if ($trainers) {
            foreach ($trainers as $trainer) {
                $trainer_id = $trainer->ID;
                $response[] = array(
                    'id' => $trainer_id,
                    'name' => $trainer->user_login,
                    'email' => $trainer->user_email,
                );
            }
        }
        if (empty($response)) {
            $response = new WP_Error('404', 'trainers not found');
        }
        return rest_ensure_response($response);
    }
}