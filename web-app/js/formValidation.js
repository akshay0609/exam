$("#formValidate").validate({
    rules: {
        first_name: {
            required: true,
            minlength: 5
        },
        last_name: {
            required: true,
            minlength: 5
        },
        uname: {
            required: true,
            minlength: 5
        },
        cemail: {
            required: true,
            email:true
        },
        password: {
            required: true,
            minlength: 5
        },
        cpassword: {
            required: true,
            minlength: 5,
            equalTo: "#password"
        },
        subjectName:{
            required: true
        },
        question:{
            required: true,
            minlength: 5
        },
        option1:{
            required: true
        },
        option2:{
            required: true
        },
        option3:{
            required: true
        },
        option4:{
            required: true
        },
        answer: {
            required: true
        },
        subjectName: {
            required: true
        }
    },
    //For custom messages
    messages: {
        uname:{
            required: "Enter a username",
            minlength: "Enter at least 5 characters"
        }
    },
    errorElement : 'div',
    errorPlacement: function(error, element) {
        var placement = $(element).data('error');
        if (placement) {
            $(placement).append(error)
        } else {
            error.insertAfter(element);
        }
    }
});
