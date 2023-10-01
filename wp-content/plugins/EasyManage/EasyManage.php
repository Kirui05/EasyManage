<?php

/**
 * @package EasyManage
 */

/**
 * Plugin Name: EasyManage
 * Plugin URI:  https://easymanage.com
 * Description: EasyManage Plugin is the best go-to tool for easy management functionality
 * Version:     1.0
 * Author:      Nicholas Kirui
 * Author URI:  https://nicholaskirui.com
 * License:     GPL v2 or later
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 */


//security
defined('ABSPATH') or die("Blocked");

use Inc\Base\Activate;
use Inc\Base\Deactivate;
use Inc\Init;


if (file_exists(dirname(__FILE__) . '/vendor/autoload.php')) {
    require_once(dirname(__FILE__) . '/vendor/autoload.php');
}

function activate_EasyManage_plugin()
{
    Activate::activate();
}
register_activation_hook(__FILE__, 'activate_EasyManage_plugin');

function deactivate_EasyManage_plugin()
{
    Deactivate::deactivate();
}
register_deactivation_hook(__FILE__, 'deactivate_EasyManage_plugin');

if (class_exists('Inc\\Init')) {
    Init::register_services();
}
