<?php
/*
Template Name: Dashboard Page
*/
?>

<?php get_header() ?>

<!-- Dashboard form -->

<main>
    <?php get_sidebar() ?>

    <div class="main-container">

        <!-- calendar -->
        <?php
        // Get the current date
        $currentDate = date('Y-m-d');

        // Get the month and year from the current date
        $month = date('m', strtotime($currentDate));
        $year = date('Y', strtotime($currentDate));

        // Get the number of days in the current month
        $daysInMonth = cal_days_in_month(CAL_GREGORIAN, $month, $year);

        // Get the month name
        $monthName = date('F', strtotime($currentDate));

        // Get the number of users
        global $wpdb;
        $usersCount = $wpdb->get_var("SELECT COUNT(*) FROM {$wpdb->prefix}users");

        // Get the number of projects
        $projectsCount = $wpdb->get_var("SELECT COUNT(*) FROM {$wpdb->prefix}projects");

        ?>

        <head>
            <style>
                .card {
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 10px;
                    width: 300px;
                    margin: 25px;
                    font-family: Arial, sans-serif;
                }

                .calendar {
                    display: grid;
                    grid-template-columns: repeat(7, 1fr);
                    grid-gap: 5px;
                    margin-top: 10px;
                }

                .calendar .day {
                    text-align: center;
                    background-color: #f8f8f8;
                    padding: 5px;
                }

                .calendar .day.current {
                    background-color: #008759;
                    color: #fff;
                    font-weight: bold;
                }
            </style>

            <div class="cardcover" style="display:flex;flex-direction:row;justify-content:center">
                <!-- cards -->
                <div class="card">
                    <div class="card-content">
                        <h3 style="color:#008759;font-size:25px;margin-bottom: 25px;">Users</h3>
                        <p>Total number of users</p>
                        <div style="width: 75px; height: 75px; border-radius: 50%; background-color: #008759; display: flex; justify-content: center; align-items: center; color: white; font-weight: bold; margin-bottom: 25px;"><?php echo $usersCount; ?></div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <h3 style="color:#008759;font-size:25px;margin-bottom: 25px;">Projects</h3>
                        <p>Total number of projects</p>
                        <div style="width: 75px; height: 75px; border-radius: 50%; background-color: #008759; display: flex; justify-content: center; align-items: center; color: white; font-weight: bold;margin-bottom: 25px;"><?php echo $projectsCount; ?></div>
                    </div>
                </div>

                <!-- calendar -->
                <div class="card">
                    <h2 style="color:#008759;"><?php echo $monthName; ?></h2>
                    <div class="calendar">
                        <?php
                        // Generate calendar days
                        for ($day = 1; $day <= $daysInMonth; $day++) {
                            $date = $year . '-' . $month . '-' . sprintf("%02d", $day);
                            $class = ($date == $currentDate) ? 'current' : '';
                            echo '<div class="day ' . $class . '">' . $day . '</div>';
                        }
                        ?>
                    </div>
                </div>


            </div>

          <div class="latest">
                  <!-- latest user table -->
            <table>
                <h2 style="text-align:center;font-size:20px;color:#008759;font-weight:bold;">Latest User</h2>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Status</th>
                        <th>Email</th>
                        <th>Role</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    global $wpdb;
                    $latestUser = $wpdb->get_row("
                        SELECT user_login, user_status, user_email, meta_value AS role
                        FROM {$wpdb->prefix}users AS users
                        LEFT JOIN {$wpdb->usermeta} AS usermeta ON users.ID = usermeta.user_id
                        WHERE usermeta.meta_key = '{$wpdb->prefix}capabilities'
                        ORDER BY users.ID DESC
                        LIMIT 1
                    ");

                    if ($latestUser) {
                        $name = $latestUser->user_login;
                        $status = ($latestUser->user_status == 0) ? 'Inactive' : 'Active';
                        $email = $latestUser->user_email;
                        $role = unserialize($latestUser->role);
                        $role = key($role);

                        echo "<tr>
                                <td>$name</td>
                                <td>$status</td>
                                <td>$email</td>
                                <td>$role</td>
                            </tr>";
                    }
                    ?>
                </tbody>
            </table>

             <!-- latest project table -->
             <table>
                <h2 style="text-align:center;font-size:20px;color:#008759;font-weight:bold;">Latest Project</h2>
                <thead>
                    <tr>
                        <th>Project name</th>
                        <th>Assignee</th>
                        <th>Due date</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Fetch latest project from wp_projects table
                    $latestProject = $wpdb->get_row("
                        SELECT project_name, assignee, due_date
                        FROM wp_projects
                        ORDER BY id DESC
                        LIMIT 1
                    ");

                    if ($latestProject) {
                        $projectName = $latestProject->project_name;
                        $assignee = $latestProject->assignee;
                        $dueDate = $latestProject->due_date;

                        echo "<tr>
                                <td>$projectName</td>
                                <td>$assignee</td>
                                <td>$dueDate</td>
                            </tr>";
                    }
                    ?>
                </tbody>
            </table>
          </div>
</main>

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
</style>
<?php get_footer() ?>
