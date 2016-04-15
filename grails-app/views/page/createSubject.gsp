<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/15/16
  Time: 3:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Speed test</title>
    <meta name="layout" content="layout1">
</head>

<body>

    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid-theme.min.css" />

    <script src="<%=request.contextPath %>/js/createSubject.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.4.1/jsgrid.min.js"></script>

    <g:render template="flash_message"/>
    <div class="container">
        <h2 class="center-align flow-text">Create New Subject Test</h2>
        <div class="divider"></div>
        <div class="section container">

            <form class="formValidate" id="formValidate" method="get" action="saveSubject" novalidate="novalidate">
                <fieldset>
                    <legend>New Subject</legend>
                    <div class="input-field">
                        <label for="subjectName">Subject Name</label>
                        <input type="text" id="subjectName" class="validate" name="subjectName" data-error=".errorTxt13">
                        <div class="errorTxt13"></div>
                    </div>
                    <div class="section">
                        <input type="submit" id="Save" class="right btn blue " value="Save">
                    </div>
                </fieldset>
            </form>



            <h4  class="flow-text center-align" id="detail_history"><span>Detail History of Subject</span></h4>
            <div id="jsGrid" class="jsgrid center z-depth-3" style="position: relative; height: 90%; width: 100%;"></div>
        </div>
    </div>

</body>
</html>