package com.userInfo

import com.images.Image
import com.result.Result

class User {
    String fName
    String lName
    String userName
    String email
    String password
    boolean admin
    Date dateCreated
    Date lastUpdated

    static hasOne = [image:Image]
    static hasMany = [results:Result]

    static mapping = {
        admin defaultValue: false
    }

    static constraints = {
        fName size: 5..15
        lName size: 5..15
        userName unique: true, blank: false
        email unique: true, blank: false
        password size: 0..15, blank: false
    }
}
