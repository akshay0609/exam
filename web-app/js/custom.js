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

    $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrain_width: true, // Does not change width of dropdown to that of the activator
            hover: true, // Activate on hover
            gutter: 0, // Spacing from edge
            belowOrigin: true, // Displays dropdown below the button
            alignment: 'left' // Displays dropdown with edge aligned to the left of button
        }
    );

    $('.dropdown-button1').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrain_width: false,
            hover: true,
            gutter: 0,
            belowOrigin: true,
            alignment: 'left'
        }
    );

});