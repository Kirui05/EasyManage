<?php

/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

class projectroutes {
    public function register(){
        add_action('rest_api_init', 'register_project_endpoints');
    }
    public function register_project_endpoints(){
        resister_rest_route('easymanage/v2', '/project', array(
            'methods' => 
        ))
    }
}