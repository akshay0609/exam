package com.exam

class Subject {

    String subjectName
    Date dateCreated
    Date lastUpdated

    static hasMany = [questions:Question]

    static constraints = {
        subjectName blank: false, unique: true
    }
}
