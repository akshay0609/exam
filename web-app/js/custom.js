$(function(){
    $("#time").countdowntimer({
        minutes : 20,
        seconds : 10,
        size : "lg"
    });
    $(".button-collapse").sideNav();

    $("#submit1").click(function(){
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/testDemo/page/home",
            success: function (data) {
                console.log(data)
            }
        });
    });

    $("#formid").ajaxForm(function(){
       alert("Thanks you")
    });

    $('.tooltipped').tooltip({delay: 50});

});