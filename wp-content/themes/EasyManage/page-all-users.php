<?php
/*
Template Name: All users Page
*/
?>

<?php get_header() ?>
<main>

    <?php get_sidebar() ?>

    <div class="main-container">
        <div class="scrollable-table">
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
                    // Get all users from the wp_users table
                    $users = get_users();

                    foreach ($users as $user) {
                        $user_id = $user->ID;
                        $user_name = $user->display_name;
                        $user_status = $user->user_status;
                        $user_email = $user->user_email;
                        $user_role = implode(', ', get_userdata($user_id)->roles);
                    ?>
                        <tr>
                            <td>
                                <i></i> <?php echo $user_name; ?>
                            </td>
                            <td>
                                <button class="btn <?php echo ($user_status == 0) ? 'btn-fail' : 'btn-success'; ?>">
                                    <?php echo ($user_status == 0) ? 'Inactive' : 'Active'; ?>
                                </button>
                            </td>
                            <td><?php echo $user_email; ?></td>
                            <td><?php echo $user_role; ?></td>
                            <td>
                                <i style="color:#000;margin-right:5px;" class="bi bi-pencil-square"></i>
                                <i style="color:#000;" class="bi bi-person-x"></i>
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
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden; /* Add this line to hide the overflow */
    }

    .scrollable-table {
        max-height: 80vh;
        overflow-y: auto;
        width: calc(100% - 30px); /* Adjust the width as needed */
        margin: 0 auto; /* Center the table horizontally */
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
