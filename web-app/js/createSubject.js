$('document').ready(function() {
    $("#jsGrid").jsGrid({
        height: "45%",
        width: "100%",


        filtering: true,
        editing: true,
        sorting: true,
        paging: true,
        autoload: true,

        pageSize: 6,
        pageButtonCount: 5,

        confirmDeleting: true,
        deleteConfirm: "Do you really want to delete the client?",

        fields: [
            { name: "Sr_No", type: "text", width: 100 },
            { name: "Subject", type: "text", width: 150 },
            { name: "Total_questions", type: "text", width: 150 },
            { name: "dateCreated", type: "text", width: 150 },
            { name: "lastUpdated", type: "text", width: 100 },
            { type: "control"}
        ],

        controller: {
            loadData: function(filter) {
                console.log(filter)
                return $.ajax({
                    type: "GET",
                    url: "displayAllSubject",
                    data: filter,
                    dataType: "json"
                })
            },

            updateItem: function(item) {
                console.log(item)
                return $.ajax({
                    type: "PUT",
                    url: "updateSubject",
                    data: item,
                    dataType: "json"
                });
            },
            deleteItem: function(item) {
                console.log(item)
                return $.ajax({
                    type: "DELETE",
                    url: "displayAllSubject",
                    data: item,
                    dataType: "json"
                });
            }
        }
    });
})