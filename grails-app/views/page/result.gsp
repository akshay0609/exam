<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/11/16
  Time: 2:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>result</title>
    <meta name="layout" content="layout1">

</head>

<body>
    <link rel="stylesheet" href="<%=request.contextPath %>/css/result.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
    <script src="<%=request.contextPath%>/js/result.js"></script>
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <div class="text-flow section ">
                    <h5>Subject :- Ruby on Rails</h5>
                </div>
                <div class="divider"></div>
                <div class="section col s12 m5 l5">
                    <!-- text field -->
                    <h5 class="section center-align">Result :- <span class="center" id="result"></span></h5>
                    <h5 class="section center-align">Percentage:- <span class=" center" id="percentage"></span></h5>
                </div>
                <div class="col s12 m6 l6">
                    <!-- Graph -->
                    <div class="s12 m6 l6">
                        <div id="canvas-holder">
                            <canvas id="chart-area" width="300" height="200"/>
                        </div>
                    </div>

                    <div class="col s6 offset-s1 m6 offset-m1 l6 center-align valign-wrapper section">
                        <i class="material-icons teal-text text-accent-3 center-align">label</i><span id="correct">Correct Answer</span>
                        <i class="material-icons red-text">label</i><span id="wrong">Wrong Answer</span>
                        <i class="material-icons grey-text">label</i><span id="not">Not Attendant</span>
                    </div>
                </div>

            </div>
            %{--<div class="col s12 m6 l6">--}%
                %{--<!-- progress Graph -->--}%
            %{--</div>--}%
        </div>

        <!-- Questions Answers -->
        <div class="section">
            <div class="divider"></div>
            <div class="question_answser_details">
                <ul class="collapsible z-depth-2" data-collapsible="accordion">
                </ul>
            </div>
        </div>
    </div>
</body>
</html>