package com.result

import com.exam.Subject
import com.sun.jna.StringArray
import com.userInfo.User

import java.sql.Array

class Result {

    String resultStatus
    float percentage
    int correctAnswerCount
    int wrongAnswerCount
    String questionsAnswers
    Date dateCreated
    Date lastUpdated

    static belongsTo = [subject:Subject, user:User]

    static constraints = {
        resultStatus blank:false
        percentage blank: false
        correctAnswerCount blank: false
        wrongAnswerCount blank: false
        questionsAnswers blank: false
    }
}
