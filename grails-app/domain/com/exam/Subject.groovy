package com.exam

import com.result.Result

class Subject {

    String subjectName
    Date dateCreated
    Date lastUpdated

    static hasMany = [questions:Question, results:Result]

    static constraints = {
        subjectName blank: false, unique: true
    }
}
