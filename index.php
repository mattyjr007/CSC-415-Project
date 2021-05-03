<?php 


if(session_status() == PHP_SESSION_NONE){
    //session has not started
    session_start();
}

if ( !isset($_SESSION['user-matric'])) {
    header("Location: login.php");

}
elseif ($_SESSION['user-matric'] == 160805007) {
    header("Location: dashboard.php");
}

include 'connect.php';

$matric = $_SESSION['user-matric'];

$name = "Natasha Laurell";
$profilepic = null;

$usr = "SELECT * 
        FROM     `dbnh41dWFL`.`users`
        WHERE   student_matricno = '".$matric."'
        ";

if ($result = mysqli_query($conn,$usr)) {
    
    $usr_row = mysqli_fetch_array($result);

    $name = $usr_row['student_name'];
    $profilepic = $usr_row['student_img_url'];
    
  //  echo $profilepic;
    


}


?>

<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Home</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel='stylesheet' type='text/css' media='screen' href='./css/index.css'>
        <link rel='stylesheet' type='text/css' media='screen' href='./css/home.css'>
</head>

<body>
    <main>
        <nav>
            <ul>
                <li class="active"><a href="./">home</a></li>
                <li><a href="./">profile</a></li>
                <li><a href="./"><img src=<?php echo $profilepic ?> alt="profile"></a></li>
            </ul>
        </nav>
        <section class="p415-upperheader">
            <h1>
                Welcome
            </h1>
            <h2>
                <?php echo $name ?>
            </h2>
        </section>

        <section class="p415-mid-section">
            <p>Book An Appointment for Supervision Today!</p>
            <img src="./imgs/home-background.png" alt="" />
        </section>

        <section class="p415-bottom-section">
            <div class="dropdown">
                <button class="dropbtn" onclick="showDropDown()">Available Dates
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content" id="myDropdown">
                    <a href="#">Date 1</a>
                    <a href="#">Date 2</a>
                    <a href="#">Date 3</a>
                </div>
            </div>
            <div class="p415-slot-section">
                <p>
                    <span id="slots">2</span>
                    <span id="slots-suffix">Slot left</span>
                </p>
            </div>

            <time datetime="2021-03-22T17:30">Monday. 22nd March 2021 5:30pm</time>

            <label for="leave-a-message">Leave a message</label>
            <textarea cols="5" rows="8" id="leave-a-message" placeholder="Leave a message..." name="booking-message" ></textarea>

            <input type="submit" value="BOOK" />
        </section>

    </main>
    
    <footer>
        <p>Coyright <span id="copy-year">2021</span> &copy; appointmentunilag.com All rights reserved.</p>
    </footer>
    <script src='./js/main.js'></script>
</body>

</html>