<?php

/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

class projectroutes
{
    public function register()
    {
        add_action('rest_api_init', [$this,'register_project_endpoints']);
    }
    public function register_project_endpoints()
    {
        register_rest_route('easymanage/v2', '/project', array(
            'methods' => 'POST',
            'callback' => array($this, 'create_project'),
        ));

        register_rest_route('easymanage/v2', '/project/(?P<id>\d+)', array(
            'method' => 'GET',
            'callback' => array($this, 'get_project'),
        ));

        register_rest_route('easymanage/v2', '/projects', array(
            'methods' => 'GET',
            'callback' => array($this, 'get_all_projects'),
        ));

        register_rest_route('easymanage/v2', '/assigneeprojects', array(
            'methods' => 'GET',
            'callback' => array($this, 'trainee_get_tasks'),
            // 'permission_callback' => function () {
            //     return current_user_can('trainee');
            // }
        ));

        register_rest_route('easymanage/v2', '/project/(?P<project_id>\d+)', array(
            'methods' => 'PATCH',
            'callback' => array($this, 'update_project'),
        ));
        register_rest_route('easymanage/v2', '/project/(?P<id>\d+)', array(
            'methods' => 'DELETE',
            'callback' => array($this, 'soft_delete_project'),
        ));
    }

    public function create_project($request)
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'projects';

        $project_name = $request->get_param('project_name');
        $due_date = $request->get_param('due_date');
        $project_description = $request->get_param('project_description');
        $assignee = $request->get_param('assignee');
        
        $data = array(
            'project_name' => $project_name,
            'due_date' => $due_date,
            'project_description' => $project_description,
            'assignee' => $assignee,
        );
        
        $wpdb->insert($table_name, $data);

        return rest_ensure_response($data);
    }

    public function soft_delete_project($request)
    {
        $project_id = $request->get_param('id');
        $project = get_user_by('ID', $project_id);

        if (!$project) {
            return new WP_Error('404', 'project not found');
        }

        // Set the value of "is_deleted" to 1
        update_user_meta($project_id, 'is_deleted', 1);

        return rest_ensure_response('project deleted successfully.');
    }
    public function get_all_projects($request)
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'projects';

        $projects = $wpdb->get_results("SELECT * FROM $table_name");

        return rest_ensure_response($projects);
    }
    public function get_project($request)
    {
        global $wpdb;

        $table_name = $wpdb->prefix . 'projects';
        $project_id = $request->get_param('id');

        $project = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $project_id));

        if (!$project) {
            return new WP_Error('project_not_found', 'project not found', array('status' => 404));
        }
        return rest_ensure_response($project);
    }
    public function update_project($request)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'projects';

        $project_id = $request->get_param('project_id');
        $project_name = $request->get_param('project_name');
        $due_date = $request->get_param('due_date');
        $project_description = $request->get_param('project_description');
        $assignee = $request->get_param('assignee');

        $data = array(
            'project_name' => $project_name,
            'due_date' => $due_date,
            'project_description' => $project_description,
            'assignee' => $assignee,
        );

        $where = array('id' => $project_id);

        $wpdb->update($table_name, $data, $where);

        return rest_ensure_response($data);
    }

    public function trainee_get_tasks() {
        $trainee = wp_get_current_user();
        $trainee_name = $trainee->user_login;
    
        global $wpdb;
        $table = $wpdb->prefix . 'projects';
    
        $tasks = $wpdb->get_results(
            $wpdb->prepare(
                "SELECT * FROM $table WHERE assignee LIKE %s",
                '%' . $trainee_name . '%'
            )
        );
    
        if ($tasks) {
            return $tasks;
        } else {
            return new \WP_Error('cant_get_tasks', "Unable to get tasks", array('status' => 404));
        }
    }
    
}
