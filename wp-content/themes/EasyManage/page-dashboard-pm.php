<?php
/*
Template Name: PM dashboard Page
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
        ?>

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

        <div class="cardcover" style="display:flex;flex-direction:row">

            <!-- cards -->
            <div class="card">
                <div class="card-content">
                    <h3 style="color:#008759;font-size:25px;">To-Do List</h3>
                    <p>Today's activities...</p>
                    <a href="#" class="btn" style="background-color:#008759;border-radius:35px;">Read More</a>
                </div>
            </div>
            <div class="card">
                <div class="card-content">
                    <h3 style="color:#008759;font-size:25px;">To-Do List</h3>
                    <p>Today's activities...</p>
                    <a href="#" class="btn" style="background-color:#008759;border-radius:35px;">Read More</a>
                </div>
            </div>

            <!-- <div style="height: 50px;">
                <div class="card">
                    <div class="card-content">
                        <h3 style="color:#008759;font-size:25px;">Trainers</h3>
                        <p>Total number of trainers</p>
                        <div style="width: 50px; height: 50px; border-radius: 50%; background-color: #008759; display: flex; justify-content: center; align-items: center; color: white; font-weight: bold;">1</div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <h3 style="color:#008759;font-size:25px;">Stacks</h3>
                        <p>Total number of stacks</p>
                        <div style="width: 50px; height: 50px; border-radius: 50%; background-color: #008759; display: flex; justify-content: center; align-items: center; color: white; font-weight: bold;">1</div>
                    </div>
                </div>
            </div> -->

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