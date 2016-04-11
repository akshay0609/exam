var pieData = [
    {
        value: 8,
        color: "#1de9b6",
        highlight: "#64ffda",
        label: "Correct Answer"
    },
    {
        value: 2,
        color:"#d50000",
        highlight: "#FF5A5E",
        label: "Wrong Answer"
    }
];
window.onload = function(){
    var ctx = document.getElementById("chart-area").getContext("2d");
    window.myPie = new Chart(ctx).Pie(pieData);
};

$('document').ready(function(){

});

function ajaxCall(){

     $.ajax({
        url: 'result',
        data: {
            format: 'json'
        },
        data: {},
        success: function(data) {
        },
        type: 'GET'
    });
}