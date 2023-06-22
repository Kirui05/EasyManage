<?php

/**
 * @package EasyManage
 */

namespace Inc\Pages;

use WP_Error;

// program routes to create admin endpoints
class adminroutes{

    public function register()
    {
        add_action('rest_api_init', array($this, 'register_api_endpoints'));
    }
}