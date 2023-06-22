<?php

/**
 * @package EasyManage
 */


namespace Inc\Pages;

use WP_Error;

class createtables
{
    function register()
    {
        $this->create_stack_table();
        $this->create_projects_table();
    }
    public function create_stack_table()
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'stacks';

        $charset_collate = $wpdb->get_charset_collate();

        $sql = "CREATE TABLE $table_name (
            id INT(11) NOT NULL AUTO_INCREMENT,
            stack_name VARCHAR(255) NOT NULL,
            location VARCHAR(255) NOT NULL,
            start_date DATE NOT NULL,
            end_date DATE NOT NULL,
            assignee VARCHAR(255) NOT NULL,
            PRIMARY KEY (id)
        ) $charset_collate;";

        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($sql);
    }
    public function create_projects_table()
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'projects';

        $charset_collate = $wpdb->get_charset_collate();

        $sql = "CREATE TABLE $table_name (
            id INT NOT NULL AUTO_INCREMENT,
            project_name text NOT NULL,
            due_date DATE NOT NULL,
            is_completed int NOT NULL default 0,
            project_description text NOT NULL,
            assignee text NOT NULL,
            PRIMARY KEY (id)
        ) $charset_collate;";

        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($sql);
    }
}
