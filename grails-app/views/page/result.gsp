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
            <div class="col s12 m6 l6">
                <div class="text-flow section ">
                    <h5>Subject :- Ruby on Rails</h5>
                </div>
                <div class="divider"></div>
                <div class="section col s12 m5 l5">
                    <!-- text field -->
                    <h5 class="section">Result :- <span class="green-text center" id="result">Pass</span></h5>
                    <h5 class="section">Percentage:- <span class="green-text center" id="percentage">80%</span></h5>
                </div>
                <div class="col s12 m7 l7">
                    <!-- Graph -->
                    <div id="canvas-holder">
                        <canvas id="chart-area" width="300" height="180"/>
                    </div>
                </div>

            </div>
            <div class="col s12 m6 l6">
                <!-- progress Graph -->
            </div>
        </div>

        <!-- Questions Answers -->
        <div class="section">
            <div class="divider"></div>
            <div class="question_answser_details">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header add_border"><i class="material-icons">question_answer</i><span id="question">What is ROR</span></div>
                        <div class="collapsible-body">
                            <p class="card-panel small red-text">Your answer :- <span class="user_answer">Ruby on Ruby</span></p>
                            <p class="card-panel green-text">Correct answer :- <span class="correct_answer">Ruby on Rails</span></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>