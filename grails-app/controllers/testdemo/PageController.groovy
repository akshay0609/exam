package testdemo

import grails.converters.JSON

class PageController {
    //Initialize variables
    def questions = [[question:"what is a ROR",option1:"Ruby on Rails",option2:"Ruby on Ruby",option3:"Rails on Rails",option4:"Rails on Rails",ans:"option1"],
                     [question:"what is a output for a,b = 2,1",option1:"a = 1, b = 1",option2:"a = 2, b = 2",option3:"a = 2, b = 1",option4:"Error",ans:"option3"],
                     [question:"How to run Ruby on Rails project",option1: "rails server",option2: "rails run-app",option3: "rails run" ,option4: "run-app",ans:"option1"],
                     [question: "Which of the following commands adds the data model info to the model file?" ,option1: "annotate" ,option2: "bundle install",option3: "generate model" ,option4:"Rails server",ans:"option3"],
                     [question: "Which part of the MVC stack does ERB or HAML typically participate in?",option1:"View" ,option2: "Controller" ,option3: "Model" ,option4: "Class",ans:"option1"],
                     [question: "How can you get a list of all available rails generators?",option1: "rake generate",option2: "rails g --list" ,option3: "rails generate" ,option4:"rails generate --tasks",ans:"option3"],
                     [question: "In a Rails application, a Gemfile needs to be modified to make use of sqlite3-ruby gems. Which of the following options will use these gems, as per the new Gemfile?" ,option1: "gem bundle install",option2: "mate Gamefile" ,option3: "install bundle Gemfile" ,option4:"bundle install",ans:"option4"],
                     [question: "How do you list the routes of a Rails application?",option1: "rails show paths" ,option2: "rake routes",option3: "rails generate:routes",option4:"rake router:path",ans:"option2"],
                     [question: "How do you list the routes of a Rails application?",option1: "Repository",option2: "None of the answers are correct" ,option3: "ActiveRecord" ,option4:"DataMapper",ans:"option3"],
                     [question: "The method Initialize within a class is always:",option1: "private" ,option2: "public" ,option3: "default" ,option4:"protected",ans:"option2"]]
    def userAnswer = [:]
    def radioOptions = [:]
    def result = [:]

    def index() { }
    def login() {}
    def home() {}

    /**
     * Check authorize user
     * */
    def account_validation() {
         if (params.username == 'Akshay' && params.password == 'Akshay') {
            flash.message = "Welcome to test.com"
            redirect(action: 'home')
         } else {
            flash.message = "Username or Password is invalid"
            redirect(action: 'login')
         }
    }

    /*
    * send questions to UI
    * */
    def sendQuestions() {
        int questionIndex = params.count.toInteger()

        def data = ["key": questions[questionIndex]] as JSON
        render data
    }

    def checkAnswer() {
        int questionIndex = params.count.toInteger()
        if (questions[questionIndex].ans == params.option) {
            userAnswer[questionIndex] = 1
            radioOptions[questionIndex] = params.option
            render 'write answer'
        } else {
            userAnswer[questionIndex] = 0
            radioOptions[questionIndex] = params.option
            render 'wrong answer'
        }
    }

    def sendOptionForRadio() {
        int questionIndex = params.questionIndex.toInteger()
        render radioOptions[questionIndex]
    }

    def result() {

        int sum =  userAnswer.values().sum()
        def percentage = (sum/10)*100  //calculate percentage

        /*Count for correct and wrong answers*/
        int correctAnswerCount = userAnswer.values().count {it==1}
        int wrongAnswerCount = userAnswer.values().count {it==0}

        /*Question and answer details*/
        def questionsAnswers = []
        questionsAnswers = (0..9).collect{
            data = [questions: questions[it].question,
                    correctAnswer: questions[it].(questions[it].ans),
                    wrong_answer: userAnswer[it] == 0?  questions[it].(radioOptions(it)) : null]
            data as JSON
        }

        def data = ["key": [correctAnswerCount:correctAnswerCount,
                            wrongAnswerCount:wrongAnswerCount,
                            questionsAnswers:questionsAnswers,
                            percentage:percentage]
                    ] as JSON

        render data

    }
}
