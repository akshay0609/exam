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
            //data: {
            //    "userName": $("#uname").val(), "emailId": $("#emailId").val(),
            //    "mNum": $("#mNum").val(), "movie": $("#movie").val(),
            //    "date": $("#date").val(), "time": $("#time").val(),
            //    "qty": $("#qty").val(), "dtime": $("#timeId").val()
            //},
            //cache: false,
            success: function (data) {
                console.log(data)
            }
        });
    });

    $("#formid").ajaxForm(function(){
       alert("Thanks you")
    });
});