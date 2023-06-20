<?php

/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

class stacksroutes
{
    public function register()
    {
        add_action('rest_api_init', 'register_stack_endpoints');
    }
    public function register_stack_endpoints()
    {
        register_rest_route('easymanage/v2', '/stack', array(
            'methods' => 'POST',
            'callback' => array($this, 'create_stack'),
        ));

        register_rest_route('easymanage/v2', 'stack/(?P<id>\d+)', array(
            'method' => 'GET',
            'callback' => array($this, 'get_stack'),
        ));

        register_rest_route('easymanage/v2', '/stacks', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_all_stacks'),
        ));

        register_rest_route('easymanage/v2', 'stack/(?P<id>\d+)', array(
            'methods' => 'PATCH',
            'callback' => array($this, 'update_stack'),
        ));
    }

    public function create_stack($request)
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'stacks';

        $stack_name = $request->get_param('stack_name');
        $location = $request->get_param('location');
        $start_date = $request->get_param('start_date');
        $end_date = $request->get_param('end_date');
        $assignee = $request->get_param('assignee');

        $data = array(
            'stack_name' => $stack_name,
            'location' => $location,
            'start_date' => $start_date,
            'end_date' => $end_date,
            'assignee' => $assignee,
        );

        $wpdb->insert($table_name, $data);

        return rest_ensure_response($data);
    }

    public function get_all_stacks($request)
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'stacks';

        $stacks = $wpdb->get_results("SELECT * FROM $table_name");

        return rest_ensure_response($stacks);
    }
    public function get_stack($request)
    {
        global $wpdb;

        $table_name = $wpdb->prefix . 'stacks';
        $stack_id = $request->get_param('id');

        $stack = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $stack_id));

        if (!$stack) {
            return new WP_Error('stack_not_found', 'stack not found', array('status' => 404));
        }
        return rest_ensure_response($stack);
    }
    public function update_stack($request)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'stacks';

        $stack_id = $request->get_param('stack_id');
        $stack_name = $request->get_param('stack_name');
        $location = $request->get_param('location');
        $start_date = $request->get_param('start_date');
        $end_date = $request->get_param('end_date');
        $assignee = $request->get_param('assignee');

        $data = array(
            'stack_name' => $stack_name,
            'location' => $location,
            'start_date' => $start_date,
            'end_date' => $end_date,
            'assignee' => $assignee,
        );

        $where = array('id' => $stack_id);

        $wpdb->update($table_name, $data, $where);

        return rest_ensure_response($data);
    }
}
