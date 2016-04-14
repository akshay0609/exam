package com.userInfo

class User {
    String fName
    String lName
    String userName
    String email
    String password
    Date dateCreated
    Date lastUpdated

    static constraints = {
        fName size: 5..15
        lName size: 5..15
        userName unique: true, blank: false
        email unique: true, blank: false
        password size: 0..15, blank: false
    }
}
