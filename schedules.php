<?php

    if(session_status() == PHP_SESSION_NONE){
        //session has not started
        session_start();
    }
    
    if ( !isset($_SESSION['user-matric'])) {
        header("Location: login.php");
    
    } elseif ($_SESSION['user-matric'] !=160805007) {
        header("Location: login.php");
    }

?>


<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Schedules</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel='stylesheet' type='text/css' media='screen' href='./css/main.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='./css/sidebar.css'>
</head>

<body>
    <main>
        <section class="header-sidebar">
            <input type="checkbox" id="toggle-butt" />

            <label for="toggle-butt" class="toggle-menu">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </label>

            <section class="side-bar-section">
                <div class="profile-image">
                    <img src="./imgs/demo.png" alt="profile" />
                    <hr />
                </div>

                <div class="links-to-pages">
                    <div class="page-link">
                        <a href="./index.html">
                            <img src="./imgs/appointment.svg" alt="">
                            <p>Appointments</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="./schedules.html">
                            <img src="./imgs/schedules.svg" alt="">
                            <p>Schedules</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="/">
                            <img src="./imgs/sessions.svg" alt="">
                            <p>Sessions</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="/">
                            <img src="./imgs/mail.svg" alt="">
                            <p>Message</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="/">
                            <img src="./imgs/admin.svg" alt="">
                            <p>Admin</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="/">
                            <img src="./imgs/logout.svg" alt="">
                            <p>Logout</p>
                        </a>
                    </div>
                </div>
            </section>
        </section>
    </main>
    <script src='./js/main.js'></script>
</body>

</html>