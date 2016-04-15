package com.exam

class Question {

    String question
    String option1
    String option2
    String option3
    String option4
    String answerOption

    static belongsTo = [subject:Subject]

    static constraints = {
        question blank: false, unique: true
        option1 blank: false
        option2 blank: false
        option3 blank: false
        option4 blank: false
    }
}
