package testdemo

import grails.converters.JSON
import groovy.json.JsonSlurper

class PageController {

    def index() { }
    def home() {}

    def exam() {
        def questions = [[question:"what is a ROR",option1:"Ruby on Rails",option2:"Ruby on Ruby",option3:"Rails on Rails",option4:"Rails on Rails"],
                         [question:"what is a output for a,b = 2,1",option1:"a = 1, b = 1",option2:"a = 2, b = 2",option3:"a = 2, b = 1",option4:"Error"]]

        println "***************"
        println questions as JSON

        def data = ["key": questions]
        render questions
    }
}
