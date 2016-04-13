$(document).ready(function () {
    var count = 0;
    var question = "0"
    ajaxCall(count)
    question = questionListCss(question)
    $(".authentication").css({"display":""})
    $(".a").prop("disabled",true);

    $("#next").click(function(){
        count++;
        $(".options").prop("checked",false)
        redioOption(count)
        ajaxCall(count)
        $("#" + question).removeClass("active pink")
        question = questionListCss(count)
    });

    $("#previous").click(function(){
        count--;
        $(".options").prop("checked",false)
        redioOption(count)
        ajaxCall(count)
        $("#" + question).removeClass("active pink")
        question = questionListCss(count)

    })

    $('.question a').click(function(evt) {

        $(".options").prop("checked",false);
        $(".submit_test").prop("disabled",false);
        evt.preventDefault();
        $("#" + question).removeClass("active pink z-depth-4")
        var questionId = $(this).attr("id");
        count = questionId
        redioOption(count)
        question = questionListCss(questionId)
        ajaxCall(questionId)
    });

    $('#myForm input').on('change', function() {
        console.log($('input[name=answer]:checked', '#myForm').val());
        console.log(count)
        option = $('input[name=answer]:checked', '#myForm').val();

        /*send option to controller*/
        $.ajax({
            url:'checkAnswer',
            data: {
                format: 'json'
            },
            data: {count: count,option: option},
            success: function (data) {
                console.log(data);
            }
        });
    });

    //Result
    //$('.submit_test').click(function(){
    //    $.ajax({
    //      url: 'result',
    //      success: function(data) {
    //        console.log(data + "%")
    //      }
    //    });
    //});

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
        url: 'sendQuestions',
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

function redioOption(questionIndex){
    $.ajax({
        url: 'sendOptionForRadio',
        data: {questionIndex:questionIndex},
        success: function(data) {
            console.log(data)
            if (data != 'null') {
            $("." + data).prop("checked",true)
            }
        }
    })
};

function questionListCss(question) {
    $("#" + question).addClass("active pink");
    return question
};



