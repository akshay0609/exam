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
                            <form id="formid" action="#">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input type="text" id="first_name" autocomplete="off" class="validate">
                                    <label for="first_name">First name</label>
                                </div>

                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input type="text" id="last_name" class="validate">
                                    <label for="last_name">Last name</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">email</i>
                                    <input type="email" id="email" class="validate">
                                    <label for="email">Email</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input type="text" id="username" autocomplete="off" class="validate">
                                    <label for="username">User name</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">https</i>
                                    <input type="password" id="password" class="validate">
                                    <label for="password">Password</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">https</i>
                                    <input type="password" id="confirm_password" class="validate">
                                    <label for="confirm_password">Confirm Password</label>
                                </div>

                                <div class="section">
                                    <input type="submit" class="col s12 m4 l4 offset-m4 offset-l4 btn red" value="Register">
                                </div>
                            </form>
                        </div>
                    </div>
            </div><!-- end Register form -->

            <!-- login form-->
            <div class="col s12 m4 l4">
                <div class="container">
                    <form method="get" action="account_validation">

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

                        <button type="submit"  id="submit1" class="waves-effect darken-3 col s12 m9 l9 offset-l2 offset-m2 z-depth-2 center btn blue lighten-1">Login
                            <i class="material-icons right">send</i>
                        </button>
                    </form>
                </div>
            </div><!-- end login form -->

         </div> <!-- end row -->
    </div> <!-- end container-->
</body>
</html>