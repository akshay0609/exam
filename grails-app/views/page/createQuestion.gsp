<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/15/16
  Time: 11:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Speed test</title>
    <meta name="layout" content="layout1">
</head>

<body>
    <g:render template="flash_message"/>
    <div class="container">
        <h2 class="center-align flow-text">Create New Question</h2>
        <div class="divider"></div>
        <div class="section container">
            <form class="formValidate" id="formValidate" method="get" action="saveQuestion" novalidate="novalidate">
                <label>Select Subject</label>
                <select class="error browser-default" id="crole" name="subjectName" data-error=".errorTxt6" aria-required="true" aria-describedby="crole-error" aria-invalid="true" >
                    <option value="" disabled selected>Choose your option</option>
                    <g:each in="${subject}">
                        <option>${it.subjectName}</option>
                    </g:each>
                </select>
                <div class="errorTxt6"></div>

                <div class="input-field">
                    <label for="question">Question</label>
                    <input type="text" id="question" class="validate" name="question" data-error=".errorTxt7">
                    <div class="errorTxt7"></div>
                </div>

                <div class="input-field">
                    <label for="textOption1">option1</label>
                    <input type="text" id="textOption1" class="validate" name="option1" data-error=".errorTxt8">
                    <div class="errorTxt8"></div>
                </div>

                <div class="input-field">
                    <label for="textOption2">option2</label>
                    <input type="text" id="textOption2" class="validate" name="option2" data-error=".errorTxt9">
                    <div class="errorTxt9"></div>
                </div>

                <div class="input-field">
                    <label for="textOption3">option3</label>
                    <input type="text" id="textOption3" class="validate" name="option3" data-error=".errorTxt10">
                    <div class="errorTxt10"></div>
                </div>

                <div class="input-field">
                    <label for="textOption4">option4</label>
                    <input type="text" id="textOption4" class="validate" name="option4" data-error=".errorTxt11">
                    <div class="errorTxt11"></div>
                </div>

                <div class="valign-wrapper">
                    <h6>Correct Answer : </h6>

                    <input type="radio" name="answer" id="id1" class="options" data-error=".errorTxt12" aria-required="true" class="error" value="option1"/>
                    <label for="id1" class="option" id="option1">option1</label>

                    <input type="radio" name="answer" id="id2" class="options" value="option2"/>
                    <label for="id2" class="option" id="option2">option2</label>

                    <input type="radio" name="answer" id="id3" class="options" value="option3"/>
                    <label for="id3" class="option" id="option3">option3</label>

                    <input type="radio" name="answer" id="id4" class="options" value="option4"/>
                    <label for="id4" class="option" id="option4">option4 </label>

                    <div class="errorTxt12"></div>
                </div>

                <div class="section">
                    <input type="submit" id="Save" class="right btn blue " value="Save">
                </div>
            </form>
        </div>
    </div>
    <script src="<%=request.contextPath %>/js/formValidation.js"></script>

</body>
</html>