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
                <tr>
                    <td>
                        <i></i> C#
                    </td>
                    <td> Dekut </td>
                    <td> Joy </td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Angular
                    </td>
                    <td> KDS </td>
                    <td> Nicholas </td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> WordPress
                    </td>
                    <td> Kirinyaga </td>
                    <td> Brian </td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> Angular
                    </td>
                    <td> KDS </td>
                    <td>Joy </td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> QA/QE
                    </td>
                    <td> Kirinyaga </td>
                    <td>Nicholas</td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <i></i> WordPress
                    </td>
                    <td> Dekut </td>
                    <td> Brian</td>
                    <td>April 4, 2023</td>
                    <td>June 30, 2023</td>
                    <td>
                        <a style="color:#000;" class="bi bi-pencil-square" href="http://localhost/EasyManage/update-stack/"></a>
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