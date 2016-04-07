$(document).ready(function () {
    var count = 0;
    var question = "0"
    ajaxCall(count)
    question = questionListCss(question)
    $(".authentication").css({"display":""})

    $("#next").click(function(){
        count++;
        $(".options").prop("checked",false)
        ajaxCall(count)
        $("#" + question).removeClass("active pink")
        question = questionListCss(count)
    });

    $("#previous").click(function(){
        count--;
        $(".options").prop("checked",false)
        ajaxCall(count)
        $("#" + question).removeClass("active pink")
        question = questionListCss(count)

    })

    $('.question a').click(function(evt) {

        $(".options").prop("checked",false)
        evt.preventDefault();
        $("#" + question).removeClass("active pink z-depth-4")
        var questionId = $(this).attr("id");
        count = questionId
        question = questionListCss(questionId)
        ajaxCall(questionId)
    });

    $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrain_width: false, // Does not change width of dropdown to that of the activator
            hover: true, // Activate on hover
            gutter: 0, // Spacing from edge
            belowOrigin: true, // Displays dropdown below the button
            alignment: 'left' // Displays dropdown with edge aligned to the left of button
        }
    );
});



function ajaxCall(count){

    if(count == 0) {
        $("#next").prop('disabled', false);
        $("#previous").prop('disabled', true);
    } else if (count == 9) {
        $("#next").prop('disabled', true);
        $("#previous").prop('disabled', false);
    } else {
        $("#next").prop('disabled', false);
        $("#previous").prop('disabled', false);
    }

    $.ajax({
        url: 'send_questions',
        data: {
            format: 'json'
        },
        data: {count:count},
        success: function(data) {
            var test = data.key
            $("#question").text(test.question)
            $("#option1").text(test.option1)
            $("#option2").text(test.option2)
            $("#option3").text(test.option3)
            $("#option4").text(test.option4)
        },
        type: 'GET'
    });

}

function questionListCss(question) {
    $("#" + question).addClass("active pink");
    return question
};

