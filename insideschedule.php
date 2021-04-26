<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Inside Schedules</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel='stylesheet' type='text/css' media='screen' href='./css/index.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='./css/sidebar.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='./css/inside_schedule.css'>
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
        <section class="section-head">
            <div class="header">
                <h1>Set Appointment Schedules</h1>
                <div class="container-header">
                    <div class="container">
                        <div class="round-container">
                            <h3><bold>Active</bold></h3>
                        </div>
                        <h3>2020</h3>
                        <h3>Session</h3>
                    </div>
            </div>
            <hr class="solid">
            </div>
        
        </br>
           <!-- form body -->
           <div class="form-body">
               <div class="horizontal-group">
                   <div class="form-group left">
                       <label class="label-title">Start Date</label>
                        <input type="date" class="form-input"required="required" />
                    </div>
                    <div class="form-group left">
                        <label class="label-title">End Date</label>
                        <input type="date" class="form-input"/>
                    </div>
                    <div class="form-group left">
                        <label class="label-title">Max stu/day</label>
                        <input type="number" class="form-input"/>
                    </div>
                </div>
            </div>
        </br>
            <div class="form-body">
                <div class="horizontal-group">
                    <div class="form-group left">
                        <label class="label-title">Dow</label>
                         <div >
                            <select class="form-input" name="cars" id="cars">
                                <option value="monday">Monday</option>
                                <option value="tuesday">tuesday</option>
                                <option value="wednesday">Wednesday</option>
                                <option value="thursday">Thursday</option>
                                <option value="friday">Friday</option>
                              </select>
                         </div>
                     </div>
                     <div class="form-group left">
                        <label class="label-title">Start Time</label>
                        <input type="time" class="form-input" placeholder="9/23/20" required="required" />
                    </div>
                    <div class="form-group left">
                        <label class="label-title">End Time</label>
                        <input type="time" class="form-input" placeholder="4" />
                    </div>
                    <div><button>add</button></div>
                 </div>
             </div>
             <!-- form end -->
            <div class="table-section">
                <table>
                    <tr>
                        <th>Session</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Available DOW</th>
                        <th>stu/day</th>
                        <th>StartTime</th>
                        <th>EndTime</th>
                        <th>stu/day</th>
                      </tr>
                      <tr>
                        <td>2020</td>
                        <td>8/23/20</td>
                        <td>9/23/20</td>
                        <td>monday</td>
                        <td>4</td>
                        <td>5:30pm</td>
                        <td>7:30pm</td>
                        <td>delete</td>
                      </tr>
                      <tr>
                        <td>2020</td>
                        <td>7/20/20</td>
                        <td>8/21/20</td>
                        <td>friday</td>
                        <td>3</td>
                        <td>10:00am</td>
                        <td>11:00am</td>
                        <td>delete</td>
                      </tr>
                      <tr>
                        <td>2020</td>
                        <td>5/20/20</td>
                        <td>6/21/20</td>
                        <td>tuesday</td>
                        <td>5</td>
                        <td>10:00am</td>
                        <td>11:00am</td>
                        <td>delete</td>
                      </tr>
                </table>
        </section>
    </main>
    <script src='./js/main.js'></script>
</body>

</html>