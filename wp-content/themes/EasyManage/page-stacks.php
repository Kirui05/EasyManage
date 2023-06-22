<?php
/*
Template Name: Stacks Page
*/
?>

<?php get_header() ?>
<main>

    <?php get_sidebar() ?>

    <div class="main-container">

        <table class="table">
            <thead>
                <tr style="color:#008759">
                    <th>Stack name</th>
                    <th>Location</th>
                    <th>Assignee</th>
                    <th>Start date</th>
                    <th>End date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                global $wpdb;
                $stacks = $wpdb->get_results("SELECT * FROM {$wpdb->prefix}stacks", ARRAY_A);

                foreach ($stacks as $stack) {
                    $stack_name = $stack['stack_name'];
                    $location = $stack['location'];
                    $assignee = $stack['assignee'];
                    $start_date = $stack['start_date'];
                    $end_date = $stack['end_date'];
                ?>
                    <tr>
                        <td>
                            <i></i> <?php echo $stack_name; ?>
                        </td>
                        <td><?php echo $location; ?></td>
                        <td><?php echo $assignee; ?></td>
                        <td><?php echo $start_date; ?></td>
                        <td><?php echo $end_date; ?></td>
                        <td>
                            <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

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
    }

    .table {
        width: 100%;
        margin-top: 10px;
    }

    .table th,
    .table td {
        padding: 8px;
        vertical-align: middle;
        text-align: left;
    }

    .table thead th {
        background-color: #ffff;
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
        width: 100px;
        border-radius: 25px;
    }

    .table .btn-ongoing {
        background-color: #FFBF00;
        color: #fff;
        width: 100px;
        border-radius: 25px;
    }

    .table .btn-danger {
        background-color: #dc3545;
        color: #fff;
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
