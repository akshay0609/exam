<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/5/16
  Time: 9:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Speed test</title>

    <meta name="layout" content="layout1"/>

</head>
<body>
    <script src="<%=request.contextPath%>/js/home.js"></script>
    <g:render template="flash_message" />

    <div class="container">
        <div class="row">
            <div class="section">
                <div class="section">
                    <div class="section">

                        <div class="col s2 m3 l2">
                            <g:render template="/page/questionLists"/>
                        </div>

                        <div class="col s12 m9 l9">
                            <div class="row">
                                <g:render template="/page/question"/>
                                </div>
                            </div> <!-- end row -->
                        </div><!-- end col s12 m9 l9 -->

                    </div>
                </div>
            </div>
        </div> <!-- end row -->
    </div> <!-- end container -->
</body>
</html>