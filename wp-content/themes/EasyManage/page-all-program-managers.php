<?php
/*
Template Name: All program managers Page
*/
?>

<?php get_header() ?>
<main>

    <?php get_sidebar() ?>

    <div class="main-container">
        <div class="scroll-container">
            <!-- All program_managers table -->
            <table class="table">
                <thead>
                    <tr style="color:#008759">
                        <th>Name</th>
                        <th>Status</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    global $wpdb;
                    $program_managers = $wpdb->get_results("SELECT display_name, user_email FROM $wpdb->users WHERE ID IN (SELECT user_id FROM $wpdb->usermeta WHERE meta_key = 'wp_capabilities' AND meta_value LIKE '%program_manager%')");

                    foreach ($program_managers as $program_manager) {
                        $status = get_user_meta(get_user_by('email', $program_manager->user_email)->ID, 'status', true);
                        $role = get_user_meta(get_user_by('email', $program_manager->user_email)->ID, 'wp_capabilities', true);
                        $role = array_keys($role)[0];
                        $activeClass = $status === 'active' ? 'success' : 'fail';
                    ?>
                        <tr>
                            <td>
                                <i></i> <?php echo $program_manager->display_name; ?>
                            </td>
                            <td>
                                <button class="btn btn-<?php echo $activeClass; ?>"><?php echo ucfirst($status); ?></button>
                            </td>
                            <td><?php echo $program_manager->user_email; ?></td>
                            <td><?php echo ucfirst($role); ?></td>
                            <td>
                                <a style="color:#000;margin-right:5px;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-program-manager/?program_manager_id=<?php echo get_user_by('email', $program_manager->user_email)->ID; ?>"></a>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

</main>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    main {
        display: grid;
        grid-template-columns: 250px 1fr;
        grid-template-rows: 82vh;
    }

    .main-container {
        width: 100%;
        height: 82vh;
        background-color: #f8f8f8;
        overflow: auto; /* Added to enable scrolling */
    }

    .scroll-container {
        min-height: 100%; /* Added to ensure table height fills the container */
    }

    .table {
        border-collapse: separate;
        border-spacing: 0;
        width: 100%;
        margin-top: 10px;
        /* Adjust the margin as needed */
    }

    .table th,
    .table td {
        padding: 8px;
        vertical-align: middle;
        text-align: left;
        border-top: 1px solid #e6e6e6;
        border-bottom: 1px solid #e6e6e6;
    }

    .table thead th {
        background-color: #ffff;
        border-bottom: 1px solid #e6e6e6;
    }

    .table tbody tr:nth-of-type(even) {
        background-color: #fff;
    }

    .table tbody td {
        vertical-align: middle;
    }

    .table .btn {
        padding: 6px 12px;
        border-radius: 4px;
    }

    .table .btn-success {
        background-color: #008759;
        color: #fff;
        border-color: #008759;
        width: 80px;
        border-radius: 25px;
    }

    .table .btn-fail {
        background-color: red;
        color: #fff;
        border-color: red;
        width: 80px;
        border-radius: 25px;
    }

    .table .btn-danger {
        background-color: #dc3545;
        color: #fff;
        border-color: #dc3545;
    }

    .table .fa {
        margin-right: 5px;
    }

    .table th:last-child,
    .table td:last-child {
        border-right: 1px solid #e6e6e6;
    }

    a:hover {
        color: white;
    }
</style>

<?php get_footer() ?>
