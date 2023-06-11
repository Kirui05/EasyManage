<?php
/*
Template Name: All trainers Page
*/
?>

<?php get_header()?>

<div class="main-container">

<!-- All trainers table -->
<div class="table">
        <h1>Trainers</h1>
        <?php if (empty($tickets)) : ?>
            <p>No tickets assigned.</p>
        <?php else : ?>
            <table>
                <tr>
                    <th>ticketId</th>
                    <th>title</th>
                    <th>description</th>
                </tr>
                <?php foreach ($tickets as $ticket) : ?>
                    <tr>
                        <td><?php echo $ticket->ticketId; ?></td>
                        <td><?php echo $ticket->title; ?></td>
                        <td><?php echo $ticket->description; ?></td>
                        <td>

                            <form action="view.php" method="POST">
                                <input type="hidden" name="ticketId" value="<?php echo $ticket->ticketId; ?>">
                                <button type="submit">Mark as Done</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
        <?php endif; ?>
        <a href="index.php">Back to Dashboard</a>
    </div>
<style>
    .main-container{
        width: 100%;
        height:82vh;
        background-color: #e6e6e6;
    }
</style>

<?php get_footer()?>