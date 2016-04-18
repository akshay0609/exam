$('document').ready(function() {
    $(".authentication").css({"display":""})
    $("#jsGrid").jsGrid({
        height: "45%",
        width: "100%",

        //filtering: true,
        editing: true,
        sorting: true,
        paging: true,
        autoload: true,

        pageSize: 8,
        pageButtonCount: 5,

        confirmDeleting: true,
        deleteConfirm: "Do you really want to delete the client?",

        fields: [
            { name: "ID", editing:false,type: "text", width: 100 },
            { name: "Subject", type: "text", width: 150 },
            { name: "Total_questions", editing:false, type: "text", width: 150 },
            { name: "dateCreated", editing:false, type: "text", width: 150 },
            { name: "lastUpdated", editing:false, type: "text", width: 100 },
            { type: "control"}
        ],

        controller: {
            loadData: function(filter) {
                return $.ajax({
                    type: "GET",
                    url: "displayAllSubject",
                    data: filter,
                    dataType: "json"
                })
            },

            updateItem: function(item) {
                return $.ajax({
                    type: "POST",
                    url: "updateSubject",
                    data: item,
                    dataType: "json"
                });
            },
            deleteItem: function(item) {
                return $.ajax({
                    type: "POST",
                    url: "deletedSubject",
                    data: item,
                    dataType: "json"
                });
            }
        }
    });
})