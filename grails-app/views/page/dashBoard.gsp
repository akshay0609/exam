<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/12/16
  Time: 4:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>result</title>
    <meta name="layout" content="layout1">

</head>

<body>
<link rel="stylesheet" href="<%=request.contextPath %>/css/dashBoard.css" type="text/css">
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid.min.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid-theme.min.css" />

<script src="<%=request.contextPath %>/js/dashBoard.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid.min.js"></script>

<div class="container">
    <div class="row card-panel ">

        <!-- ******************************* -->
        <!-- User Profile photo and name -->
        <!-- ******************************* -->
        <div class="col center s12 m2 l2 profile_border">
            <img  class="section" src="https://www.watch2gether.com/assets/w2guser-default-4cd04e39cfd59017ebad065028b8af9dfca8499a45a7b19ec20b1c478a751a77.png" width="200px" height="230px">
            <div class="divider"></div>
            <h5 class="center-align user_name">${params.name}</h5>
        </div>

        <!-- ******************************* -->
        <!-- User test given on Subject and Progress -->
        <!-- ******************************* -->
        <div class="col s12 m7 offset-m2 l7">
            <div class="card-panel z-depth-2 profile_contain" style="margin-left: 5%">
                <ul >
                    <li>
                        <div class="row">
                            <div class="col s3">
                                <h6 class="orange-text">HTML</h6>
                            </div>
                            <div class="col s8">
                                <div class=" progress">
                                    <div class="center determinate" style="width: 70%"></div> <span class="percentage center-align">70%</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col s3">
                                <h6 class="blue-text">CSS</h6>
                            </div>
                            <div class="col s8">
                                <div class=" progress">
                                    <div class="center determinate" style="width: 80%"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col s3">
                                <h6 class="lime-text text- darken-4">JavaScript</h6>
                            </div>
                            <div class="col s8">
                                <div class=" progress">
                                    <div class="center determinate" style="width: 70%"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col s3">
                                <h6 class="blue-text text-accent-3">Jquery</h6>
                            </div>
                            <div class="col s8">
                                <div class=" progress">
                                    <div class="center determinate" style="width: 60%"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col s3">
                                <h6 class="red-text">Ruby on Rails</h6>
                            </div>
                            <div class="col s8">
                                <div class=" progress">
                                    <div class="center determinate" style="width: 80%"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-- ******************************* -->
        <!-- Number of Test Completed -->
        <!-- ******************************* -->
        <div class="center">
            <img  class="section" src="https://s3.amazonaws.com/reskill-client/insights/stats-tests-h.svg" width="200px" height="180px">
            <h5>0</h5>
            <h4 class="flow-text">Test Completed</h4>
        </div>
    </div> <!-- end -->

    <!-- ******************************* -->
    <!-- Subject Images  and description -->
    <!-- ******************************* -->
    <div class="row">
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/HTML5_logo.png" width="100px" height="100px">
                    </div>
                    <div class="col s6 ">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/css (1).png" width="100px" height="100px">
                    </div>
                    <div class="col s6">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/js-logo-badge-512.png" width="100px" height="100px">
                    </div>
                    <div class="col s6">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/jQurery.gif" width="100px" height="100px">
                    </div>
                    <div class="col s6">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ******************************* -->
    <!-- Second row Subject Images  and description -->
    <!-- ******************************* -->
    <div class="row second_row">
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/ruby.sh-600x600.png" width="100px" height="100px">
                    </div>
                    <div class="col s6 ">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s6 m3 l3">
            <a href="home">
                <div class="card z-depth-1">
                    <div class="row">
                        <div class="col s5">
                            <img class="responsive-img" src="<%=request.contextPath %>/images/Ruby-on-Rails.png" width="100px" height="100px">
                        </div>
                        <div class="col s6 ">
                            <span>Professionals took this test and scored an average of 74%</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/groovy-logo-medium1.png" width="100px" height="100px">
                    </div>
                    <div class="col s6 ">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s6 m3 l3">
            <div class="card z-depth-1">
                <div class="row">
                    <div class="col s5">
                        <img class="responsive-img" src="<%=request.contextPath %>/images/Grails.sh-600x600.png" width="100px" height="100px">
                    </div>
                    <div class="col s6 ">
                        <span>Professionals took this test and scored an average of 74%</span>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- end Second row Subject Images  and description -->

    <!-- ******************************* -->
    <!-- Second row Subject Images  and description -->
    <!-- ******************************* -->
        <h4  class="flow-text center-align" id="detail_history"><span>Detail History of Test</span></h4>
        <div id="jsGrid" class="jsgrid center z-depth-3" style="position: relative; height: 90%; width: 100%;"></div>
    </div><!-- container -->
</body>
</html>