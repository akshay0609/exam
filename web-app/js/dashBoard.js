$(document).ready(function(){
    swal("")
    swal("Welcome to test.com!", "Check out multiple test and improve your self ")
    $(".authentication").css({"display":""})

    $(".z-depth-1").on({
        mouseenter: function () {
            //$(this).css({"height": '160px',width:"150px"});
            $(this).css({"border": "solid 1px gray"});
        },
        mouseleave: function () {
            $(this).css({"border": ""});
        }
    });

    $("#jsGrid").jsGrid({
        height      : "45%",
        width       : "100%",

        //filtering: true,
        editing     : false,
        sorting     : true,
        paging      : true,
        autoload    : true,

        pageSize: 6,
        pageButtonCount: 5,

        confirmDeleting: true,
        deleteConfirm: "Do you really want to delete the client?",


        fields: [
            { name: "ID", type: "text", width: 100 },
            { name: "Subject", type: "text", width: 180 },
            { name: "Date", type: "text", width: 150 },
            { name: "Result", type: "text", width: 100 },
            { name: "Percentage", type: "text", width: 200 },
            //{ type: "control",  editButton: false }
        ],

        //data :[
        //    //ID: "001", Subject: "aaaa", Date: "12\/4\/2016", Time:"2", Result: "Pass",Precentage:"77%"
        //    {"ID": "1", "Subject": "HTML", "Date": "13\/4\/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"},
        //    {"ID": "2", "Subject": "JavaScript", "Date": "12\/4\/2016", "Time":"12:00", "Result": "Pass","Percentage":"77%"}
        //]

        controller: {
        loadData: function(filter) {
            return $.ajax({
                type: "GET",
                url: "jsGrid",
                data: filter,
                dataType: "json"
            })}
        }
    });

    $('.tooltipped').tooltip({delay: 50});
});