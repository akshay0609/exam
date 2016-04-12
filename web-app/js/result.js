$('document').ready(function(){
    $(".authentication").css({"display":""})
    ajaxCall();
});

function ajaxCall(){
     var correctAnswerCount = 0;
     var wrongAnswerCount = 0;
     $.ajax({
        url: 'result_details',
        data: {
            format: 'json'
        },
        success: function(data) {
            var temp_data = data.key;

            $('#result').text(temp_data.result_status);
            if (temp_data.result_status == "Fail") {
                $('#result').css({"color":"#d50000"});
                $('#percentage').css({"color":"#d50000"});
            }else {
                $('#result').css({"color":"#4caf50"});
                $('#percentage').css({"color":"#4caf50"});
            }
            $('#percentage').text(temp_data.percentage + "%");
            correctAnswerCount = parseInt(temp_data.correctAnswerCount);
            wrongAnswerCount = parseInt(temp_data.wrongAnswerCount);
            piChart(correctAnswerCount,wrongAnswerCount)
            for (questionIndex = 0; questionIndex < 10; questionIndex++) {
                $('ul.collapsible').append(addCollapsibleList(temp_data.questionsAnswers[questionIndex].questions,
                                                              temp_data.questionsAnswers[questionIndex].correctAnswer,
                                                              temp_data.questionsAnswers[questionIndex].user_answer))
            }
        },
        type: 'GET'
    });
}

function piChart(correctAnswerCount,wrongAnswerCount) {
    var pieData = [
        {
            value: correctAnswerCount,
            color: "#1de9b6",
            highlight: "#64ffda",
            label: "Correct Answer"
        },
        {
            value: wrongAnswerCount,
            color:"#d50000",
            highlight: "#FF5A5E",
            label: "Wrong Answer"
        },
        {
            value: 10 - (correctAnswerCount + wrongAnswerCount),
            color:"#eeeeee",
            highlight: "#bdbdbd",
            label: "Not Attendant"
        }
    ];
    window.onload = function(){
        var ctx = document.getElementById("chart-area").getContext("2d");
        window.myPie = new Chart(ctx).Pie(pieData);
    };
}

function addCollapsibleList(question,correctAnswer,user_answer) {

    var CollapsibleList = ""

    if(user_answer != null) {
        CollapsibleList = "<li>" +
                                "<div class=\"collapsible-header \"><i class=\"material-icons\">question_answer</i><span id=\"question\">" + question + "</span></div>" +
                                "<div class=\"collapsible-body\">" +
                                "<p class=\"card-panel small red-text\">Your answer :- <span class=\"user_answer\">" + user_answer + "</span></p>" +
                                "<p class=\"card-panel green-text\">Correct answer :- <span class=\"correct_answer\">" + correctAnswer + "</span></p>" +
                                "</div>" +
                           "</li>"
    } else {
        CollapsibleList = "<li>" +
                                "<div class=\"collapsible-header \"><i class=\"material-icons\">question_answer</i><span id=\"question\">" + question + "</span></div>" +
                                "<div class=\"collapsible-body\">" +
                                "<p class=\"card-panel green-text\">Correct answer :- <span class=\"correct_answer\">" + correctAnswer + "</span></p>" +
                                "</div>" +
                           "</li>"
    }

    return CollapsibleList
}