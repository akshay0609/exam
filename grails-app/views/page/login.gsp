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
    <g:render template="js_and_cs"/>
</head>

<body>

<g:render template="/page/headerDetails"/>

    <div class="container">
        <g:render template="flash_message"/>

        <div class="row">

            <!-- Register form -->
            <div class="col s12 m8 l8">
                <h4 class="center">Register</h4>
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
                        <i class="material-icons prefix">email</i>
                        <input type="email" id="email" class="validate">
                        <label for="email">Email</label>
                    </div>

                    <input type="submit" class="col s12 m4 l3 offset-m4 offset-l5 btn" value="Register">
                </form>
            </div><!-- end Register form -->

            <!-- login form-->
            <div class="col s12 m4 l4">
                <div class="container">
                    <form method="get" action="account_validation">
                        <h4 class="center" >Login</h4>

                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input type="text" id="user_name" name="username" class="validate">
                            <label for="user_name">User name</label>
                        </div>

                        <div class="input-field col s12" style="padding-bottom:5%">
                            <i class="material-icons prefix">https</i>
                            <input type="password" id="user_password" name="password" class="validate">
                            <label for="user_password">Password</label>
                        </div>

                        <button type="submit"  id="submit1" class="col s12 center btn">Login
                            <i class="material-icons right">send</i>
                        </button>
                    </form>
                </div>
            </div><!-- end login form -->
         </div> <!-- end row -->
    </div> <!-- end container

<g:render template="/page/footerDetails"/>
</body>
</html>