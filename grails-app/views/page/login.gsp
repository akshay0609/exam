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
    <link rel="stylesheet" type="text/css" href="<%=request.contextPath%>/css/sweetalert.css">

    <meta name="google-signin-client_id" content="">
    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>

    <script src="<%=request.contextPath%>/js/sweetalert.min.js"></script>
    <script src="<%=request.contextPath%>/js/jquery.cookie.js"></script>
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
                            <form class="formValidate" id="formValidate" action="createUser" novalidate="novalidate" method="post" enctype="multipart/form-data">

                                <div class="row">
                                    <div class="col s12 m4 l4">
                                        <div class="center">
                                            <img id="profile_photo" class="responsive-img" src="https://www.watch2gether.com/assets/w2guser-default-4cd04e39cfd59017ebad065028b8af9dfca8499a45a7b19ec20b1c478a751a77.png" width="180px" height="200px">
                                            <div class="center file-field input-field">
                                                <div class="">
                                                    <span>Profile Image</span>
                                                    <input id="uploadImage" type="file" onchange="PreviewImage();" name="profileImage" >
                                                </div>
                                                <div class="file-path">
                                                    <input class="file-path validate" type="text" placeholder="Upload profile image">
                                                </div>
                                            </div>
                                            <div class="input-field">
                                                <textarea id="textarea1" name="profileStatus" class="materialize-textarea"></textarea>
                                                <label for="textarea1">Profile Status</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col s12 m8 l8">
                                        <fieldset>
                                            <div class="input-field col s6">
                                                <label for="first_name">First name</label>
                                                <input type="text" id="first_name" class="validate" name="first_name" data-error=".errorTxt111">
                                                <div class="errorTxt111"></div>
                                            </div>

                                            <div class="input-field col s6">
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
                                        </fieldset>

                                        <div class="section">
                                            <input type="submit" id="Register" class="col s12 m4 l4 offset-m4 offset-l4 btn red" value="Register">
                                        </div>
                                    </div>
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
                            <label for="user_name">User name or Email ID</label>
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
                    <div id="my-signin2" data-onsuccess="onSignIn"></div>
                    %{--<div class="g-signin2" data-onsuccess="onSignIn"></div>--}%
                </div>
            </div><!-- end login form -->

         </div> <!-- end row -->
    </div> <!-- end container-->

    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
    <script src="<%=request.contextPath %>/js/formValidation.js"></script>

</form>
</body>
</html>