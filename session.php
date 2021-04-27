<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SchedulePage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="./css/index.css">
    <link rel="stylesheet" type="text/css" href="./css/sidebar.css">
    <link rel="stylesheet" type="text/css" href="./css/SchedulePage.css">
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
                        <a href="./index.php">
                            <img src="./imgs/appointment.svg" alt="">
                            <p>Appointments</p>
                        </a>
                    </div>
                    <div class="page-link">
                        <a href="./schedules.php">
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

        <section class="p415-main-section">
            <h1 id="p415-schedule-head">Sessions</h1>
            <hr />
        </section>
    </main>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>

</html>