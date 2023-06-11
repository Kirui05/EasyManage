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
        ?>

        <!DOCTYPE html>
        <html>

        <head>
            <style>
                .card {
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 10px;
                    width: 300px;
                    /* margin: 0 auto; */
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
                    background-color: #fff;
                    border: 1px solid #e6e6e6;
                    padding: 5px;
                }

                .calendar .day.current {
                    background-color: #008759;
                    color: #fff;
                }
            </style>
        </head>

        <body>
            <div class="card">
                <h2>Calendar</h2>
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
        </body>

        </html>


        <!-- card -->
        <div class="card">
            <img src="image.jpg" alt="Card Image">
            <div class="card-content">
                <h3>Users</h3>
                <div class="number-bubble">42</div>
                <!-- <p>This is a sample card.</p> -->
                <a href="#" class="btn">Read More</a>
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
        background-color: #e6e6e6;
    }
</style>
<?php get_footer() ?>