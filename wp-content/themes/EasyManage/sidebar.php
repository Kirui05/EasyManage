<?php wp_head();

// Get current user role
$user = wp_get_current_user();
$user_roles = $user->roles;

// Define the options given in the sidebar based on the options
