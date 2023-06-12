<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" rel="stylesheet">
    <title>EasyManage</title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <?php wp_head(); ?>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #fff">
        <a class="navbar-brand logo" href="#">
            <span style="color:#008759;font-size:30px;font-weight:bold;margin-left:10px">Easy</span><span style="color:#000;font-size:30px;font-weight:bold">Manage</span>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <?php if (is_user_logged_in()) : ?>

                    <!-- Search form and button -->
                    <form action="/search" method="get" style="margin-top:7px;">
                        <input style="border:1px solid #b8b6b6;background-color:#fff;border-radius: 0.375em 0.375em 0.375em 0.375em" type="text" name="q" placeholder="Search..." />
                        <input style="border:1px solid #b8b6b6;border-radius:0.375em 0.375em 0.375em 0.375em;background-color:#008759;color:#fff;margin-right:25px" type="submit" value="Search" />
                    </form>

                    <!-- Username and icon -->
                    <li class="nav-item">
                        <a class="nav-link username" href="#">
                            <i class="bi bi-person"></i> <?php echo wp_get_current_user()->display_name; ?>
                        </a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </nav>