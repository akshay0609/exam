package testdemo

import grails.converters.JSON
import groovy.json.JsonSlurper

class PageController {

    def index() { }
    def login() {}
    def home() {

    }

    def account_validation() {
         if (params.username == 'Akshay' && params.password == 'Akshay') {
            flash.message = "Welcome to test.com"
            redirect(action: 'home')
         } else {
            flash.message = "Username or Password is invalid"
            println "invalid"
            redirect(action: 'login')
         }
    }

    def exam() {
        int count = params.count.toInteger()
        def questions = [[question:"what is a ROR",option1:"Ruby on Rails",option2:"Ruby on Ruby",option3:"Rails on Rails",option4:"Rails on Rails"],
                         [question:"what is a output for a,b = 2,1",option1:"a = 1, b = 1",option2:"a = 2, b = 2",option3:"a = 2, b = 1",option4:"Error"],
                         [question:"How to run Ruby on Rails project",option1: "rails server",option2: "rails run-app",option3: "rails run" ,option4: "run-app"]]
//                         [question:  ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]
//                         [question: ,option1: ,option2: ,option3: ,option4:]]

        def data = ["key": questions[count]] as JSON
        render data
    }
}
