$('document').ready(function() {
    var profileDetails = {};
    //checkUser()

    gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 200,
        'height': 35,
        'longtitle': true,
        'theme': 'dark'});

    function onSuccess(googleUser) {
        var profile = googleUser.getBasicProfile();
        profileDetails = { ID           : profile.getId(),
                            fullName     : profile.getName(),
                            first_name   : profile.getGivenName(),
                            last_name    : profile.getFamilyName(),
                            imageURL     : profile.getImageUrl(),
                            uname        : profile.getEmail(),
                            cpassword    : randomPassword(8),
                            cemail       : profile.getEmail()};

        //window.location.href = "createUser? ID             =" + profile.getId() + "&" +
        //                                    "fullName     =" + profile.getName() + "&" +
        //                                    "first_name   =" + profile.getGivenName()+ "&" +
        //                                    "last_name    =" + profile.getFamilyName()+ "&" +
        //                                    "imageURL     =" + profile.getImageUrl()+ "&" +
        //                                    "uname        =" + profile.getEmail()+ "&" +
        //                                    "cpassword    =" + randomPassword(8)+ "&" +
        //                                    "cemail       =" + profile.getEmail()


        $.ajax({
            type : "POST",
            url  : "createUser",
            data : profileDetails,
            //dataType:'JSON',
            success: function (data) {
                if (data != "user already exists") {
                    swal("UserName :- " + data.userName + "\n Password :- " + data.password,"Thank you sir \n" + data.success)
                    $.cookie('userName', profileDetails.uname);
                    $.cookie('password', profileDetails.cpassword);
                } else {
                    swal("Sorry sir \n" , data)
                }
            },
            error: function() {
                alert("Error");
            }
        })
    }
    function onFailure(error) {
        console.log(error);
    }

    $('#my-signin2').click(function(){
        renderButton()
    });

    function renderButton() {
        gapi.signin2.render('my-signin2', {
            'scope': 'profile email',
            'width': 200,
            'height': 35,
            'longtitle': true,
            'theme': 'dark',
            'onsuccess': onSuccess,
            'onfailure': onFailure
        });
    }

    function randomPassword(length) {
        var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP1234567890";
        var pass = "";
        for (var x = 0; x < length; x++) {
            var i = Math.floor(Math.random() * chars.length);
            pass += chars.charAt(i);
        }
        return pass;
    }

    $('.file').click(function(){
        console.log(this.value)
    })


    /*Auth function for direct login*/
    function checkUser(){
        if ($.cookie('userName') != null && $.cookie('password') != null){
            window.location.href = "accountValidation?username=" + $.cookie('userName') + "&" + "password=" + $.cookie('password')
        }
    }
});

function PreviewImage() {
    var oFReader = new FileReader();
    oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

    oFReader.onload = function (oFREvent) {
        document.getElementById("profile_photo").src = oFREvent.target.result;
    };
};

