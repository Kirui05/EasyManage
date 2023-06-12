<?php
/*
Template Name: Projects Page
*/
?>

<?php get_header() ?>
<main>

    <?php get_sidebar() ?>

    <div class="main-container">

        <table class="table">
            <thead>
                <tr style="color:#008759">
                    <th>Project name</th>
                    <th>Due date</th>
                    <th>Status</th>
                    <th>Project details</th>
                    <th>Assignee</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-ongoing">Ongoing</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Nick, Collins</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-success">Completed</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Nick, Hope</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-ongoing">Ongoing</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Mary, Collins</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-success">Completed</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Mercy, Collins</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-ongoing">Ongoing</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Nick, Patrick</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-success">Completed</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Brian, Collins</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-ongoing">Ongoing</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Nick, Patrick</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Project management
                    </td>
                    <td> June 13, 2023 </td>
                    <td>
                        <button class="btn btn-success">Completed</button>
                    </td>
                    <td>Allow Admin to deactivate trainee accounts xxx</td>
                    <td>Mary, Collins</td>
                    <td>
                        <i style="color:#000;" class="bi bi-pencil-square"></i>
                    </td>
                </tr>

                <!-- Add more rows as needed -->
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
        width: 100px;
        border-radius: 25px;
    }

    .table .btn-ongoing {
        background-color: #FFBF00;
        color: #fff;
        border-color: #FFBF00;
        width: 100px;
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