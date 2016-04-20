<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/6/16
  Time: 9:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Speed test</title>
    <meta name="layout" content="layout1">
</head>

<body>
    <link rel="stylesheet" type="text/css" href="<%=request.contextPath%>/css/login.css">
    <meta name="google-signin-client_id" content="">
    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
    <script src="<%=request.contextPath %>/js/login.js"></script>

    <div class="container">
        <g:render template="flash_message"/>

        <div class="row">
            <!-- Register form -->
            <div class="col s12 m8 l8">
                <div class="section">
                    <div class="section">
                        <h4 class="center">Register</h4>
                    </div>
                    <div class="divider"></div>
                        <div class="section">
                            <form class="formValidate" id="formValidate" method="get" action="createUser" novalidate="novalidate">

                                <div class="input-field col s5">
                                    <label for="first_name">First name</label>
                                    <input type="text" id="first_name" class="validate" name="first_name" data-error=".errorTxt111">
                                    <div class="errorTxt111"></div>
                                </div>

                                <div class="input-field col s5">
                                    <label for="last_name">Last name</label>
                                    <input type="text" id="last_name" class="validate" name="last_name" data-error=".errorTxt211">
                                    <div class="errorTxt211"></div>
                                </div>

                                <div class="input-field col s12">
                                    <label for="uname" class="">Username*</label>
                                    <input id="uname" name="uname" type="text" data-error=".errorTxt1">
                                    <div class="errorTxt1"></div>
                                </div>

                                <div class="input-field col s12">
                                    <label for="cemail" class="">E-Mail *</label>
                                    <input id="cemail" type="email" name="cemail" data-error=".errorTxt2">
                                    <div class="errorTxt2"></div>
                                </div>

                                <div class="input-field col s12">
                                    <label for="password">Password *</label>
                                    <input id="password" type="password" name="password" data-error=".errorTxt3">
                                    <div class="errorTxt3"></div>
                                </div>
                                <div class="input-field col s12">
                                    <label for="cpassword">Confirm Password *</label>
                                    <input id="cpassword" type="password" name="cpassword" data-error=".errorTxt4">
                                    <div class="errorTxt4"></div>
                                </div>

                                <div class="section">
                                    <input type="submit" id="Register" class="col s12 m4 l4 offset-m4 offset-l4 btn red" value="Register">
                                </div>
                            </form>

                        </div>
                    </div>
            </div><!-- end Register form -->

            <!-- login form-->
            <div class="col s12 m4 l4">
                <div class="container">
                    <form method="get" action="accountValidation">

                        <div class="section" style="padding-bottom: 10%">
                            <h4 class="center-align">Login</h4>
                        </div>

                        <div class="divider"></div>
                        <div class="input-field col s12 ">
                            <i class="material-icons prefix">account_circle</i>
                            <input type="text" id="user_name" name="username" class="validate">
                            <label for="user_name">User name</label>
                        </div>

                        <div class="input-field col s12" style="padding-bottom:5%">
                            <i class="material-icons prefix">https</i>
                            <input type="password" id="user_password" name="password" class="validate">
                            <label for="user_password">Password</label>
                        </div>

                        <button type="submit" id="submit1" class="waves-effect darken-3 col s12 m9 l9 offset-l2 offset-m2 z-depth-2 center btn blue lighten-1">Login
                            <i class="material-icons right">send</i>
                        </button>
                    </form>
                    <div class="divider"></div>
                    <div id="my-signin2"></div>
                </div>
            </div><!-- end login form -->

         </div> <!-- end row -->
    </div> <!-- end container-->

    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
    <script src="<%=request.contextPath %>/js/formValidation.js"></script>


</body>
</html>
