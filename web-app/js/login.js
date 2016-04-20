$('document').ready(function() {
    gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 200,
        'height': 35,
        'longtitle': true,
        'theme': 'dark'});


    function onSuccess(googleUser) {
        var profile = googleUser.getBasicProfile();
        var profileDetails = {  ID           : profile.getId(),
                                fullName     : profile.getName(),
                                first_name   : profile.getGivenName(),
                                last_name    : profile.getFamilyName(),
                                imageURL     : profile.getImageUrl(),
                                uname        : profile.getGivenName().toLowerCase(),
                                cpassword    : profile.getGivenName().toLowerCase(),
                                cemail       : profile.getEmail()}
        $.ajax({
            type : "POST",
            url  : "createUser",
            data : profileDetails,
            dataType:'JSON',
            success: function (data) {
                alert('Success');
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
            'onsuccess': onSuccess,
            'onfailure': onFailure
        });
    }
});
