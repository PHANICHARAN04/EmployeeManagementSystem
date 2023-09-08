<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./begin.css">
    <script src="begin.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
    <style>
        #video-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
			
            background-color: rgba(0, 0, 0, 0);
        }

        #video-container video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .section {
            position: relative;
            z-index: 1;
        }

        body {
            background-image: url('https://i.imgur.com/Wctw06B.png');
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>

    <a href="navbar.jsp" class="logo" target="_blank">
        <h2>EMA</h2>
    </a>
    <div><h2 style="text-align: center;">LOGIN AS EMPLOYER</h2></div>
    <div class="section">
        <div class="container">
            <div class="row full-height justify-content-center">
                <div class="col-12 text-center align-self-center py-5">
                    <div class="section pb-5 pt-5 pt-sm-2 text-center">
                        <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
                        <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
                        <label class="toogle"for="reg-log"></label>
                        <div class="card-3d-wrap mx-auto">
                            <div class="card-3d-wrapper">
                                <div class="card-front">
                                    <div class="center-wrap">
                                        <div class="section text-center">
                                            <form action="../formvalidations/adminlogvalidator.jsp" method="POST">
                                            <h4 class="mb-4 pb-3">Log In</h4>
                                            <div class="form-group">
                                                <input type="email" name="email" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
                                                <i class="input-icon uil uil-at"></i>
                                            </div>    
                                            <div class="form-group mt-2">
                                                <input type="password" name="pswd" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
                                                <i class="input-icon uil uil-lock-alt"></i>
                                            </div>
                                            <button type="submit">SUBMIT</button>
                                            <p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your password?</a></p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-back">
    <div class="center-wrap">
        <div class="section text-center">
        <form action="../formvalidations/adminregvalidator.jsp" method="POST">
            <h4 class="mb-4 pb-3">Sign Up</h4>
            <div class="form-group mt-2">
                <input type="text" name="username" class="form-style" placeholder="Employee User Name" id="employeeUserName" autocomplete="off">
                <i class="input-icon uil uil-user"></i>
            </div>
            <div class="form-group mt-2">
                <input type="email" name="email" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
                <i class="input-icon uil uil-at"></i>
            </div>
            <div class="form-group mt-2">
                <input type="password" name="pswd" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
                <i class="input-icon uil uil-lock-alt"></i>
            </div>
            <div class="form-group mt-2">
                <input type="text" name="fname" class="form-style" placeholder="Employee First Name" id="employeeFirstName" autocomplete="off">
                <i class="input-icon uil uil-user"></i>
            </div>
            <div class="form-group mt-2">
                <input type="text" name="lname" class="form-style" placeholder="Employee Last Name" id="employeeLastName" autocomplete="off">
                <i class="input-icon uil uil-user"></i>
            </div>
            <div class="form-group mt-2">
                <label for="gender" class="label">Gender:</label>
                <select name="gender" id="gender" class="form-style">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
                <i class="input-icon uil uil-venus-mars"></i>
            </div>
            <div class="form-group mt-2">
                <input type="date" name="dob" class="form-style" placeholder="Date of Birth" id="dob" autocomplete="off">
                <i class="input-icon uil uil-calender"></i>
            </div>
            <div class="form-group mt-2">
                <input type="tel" name="contact" class="form-style" placeholder="Contact No" id="contactNo" autocomplete="off">
                <i class="input-icon uil uil-phone"></i>
            </div>
            
            <button type="submit">SUBMIT</button>
            </form>
        </div>
    </div>
</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
