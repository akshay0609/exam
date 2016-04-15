package testdemo

import com.exam.Question
import com.exam.Subject
import com.userInfo.User
import grails.converters.JSON


class PageController {


    //Initialize variables
    def questions = [[question: "what is a ROR",option1:"Ruby on Rails",option2:"Ruby on Ruby",option3:"Rails on Rails",option4:"Rails on Rails",ans:"option1"],
                     [question: "what is a output for a,b = 2,1",option1:"a = 1, b = 1",option2:"a = 2, b = 2",option3:"a = 2, b = 1",option4:"Error",ans:"option3"],
                     [question: "How to run Ruby on Rails project",option1: "rails server",option2: "rails run-app",option3: "rails run" ,option4: "run-app",ans:"option1"],
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
    def userName = "Akshay"

    def index() { }
    def login() {}
    def homePage() {}

    def dashBoard() {
        return [params: [name: userName]]
    }

    def result() {
        return [params: [name: userName]]
    }

    def home() {
        userAnswer = [:]
        radioOptions = [:]
        result = [:]
        return [params: [name: userName]]
    }

    /**
     * Check authorize user
     */
//    def accountValidation() {
//
//         if (userInfo[params.username] != null && userInfo[params.username].(password) == params.password) {
//            flash.message = "Welcome to test.com"
//            userName = userInfo[params.username].(fname)
//            redirect(action: 'dashBoard', params: [name: userName])
//         } else {
//            flash.message = "Username or Password is invalid"
//            redirect(action: 'login')
//         }
//    }

    /**
    * send questions to UI
    */
//    def sendQuestions() {
//        int questionIndex = params.count.toInteger()
//        def data = ["key": questions[questionIndex]] as JSON
//        render data
//    }


    /**
     *check Answer method used for checking correct answer*/
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

    /**
     * Send option radio for setting which option need to enable
     */
    def sendOptionForRadio() {
        int questionIndex = params.questionIndex.toInteger()
        render radioOptions[questionIndex]
    }

    /**
     * Result Method for display percentage, correct and wright answers
     */
    def result_details() {
        int sum =  userAnswer.values().sum()
        def percentage = (sum/10)*100  //calculate percentage

        /*Count for correct and wrong answers*/
        int correctAnswerCount = userAnswer.values().count {it==1}
        int wrongAnswerCount = userAnswer.values().count {it==0}

        /*Question and answer details*/
        def questionsAnswers = (0..9).collect{
            [questions: questions[it].question,
             correctAnswer: questions[it].(questions[it].ans),
             user_answer: userAnswer[it] == 0?  questions[it].(radioOptions[it]) : null]
        }

        def result_status = (percentage > 30)? "Pass" : "Fail"

        def data = ["key": [correctAnswerCount:correctAnswerCount,
                            wrongAnswerCount:wrongAnswerCount,
                            questionsAnswers:questionsAnswers,
                            percentage:percentage,
                            result_status:result_status]
        ] as JSON

        render data
    }

    /**
     * Create new user
     */
//    def createUser() {
//       /* def user = new User(fName: params.first_name,lName: params.last_name,userName: params.uname,email: params.cemail,password: params.cpassword)
//        if(user.save()) {
//            flash.message = "Account Successfully Created"
//        } else {
//            flash.message = "Account Already Exist"
//        }
//        redirect(action: 'login')*/
//
//        /*for static data*/
//        if (userInfo[params.uname] == null && userInfo[params.uname] == null) {
//            userInfo = [(params.uname): [fname: params.first_name, lname: params.last_name, email: params.cemail, password: params.cpassword]]
//            flash.message = "Account Successfully Created"
//        } else {
//            flash.message = "Account Already Exist"
//        }
//        redirect(action: 'login')
//    }

    def jsGrid() {
        println params
        def staticData = [
                //Sr.No: "001", Subject: "aaaa", Date: "12\/4\/2016", Time:"2", Result: "Pass",Precentage:"77%"
                ["Sr_No": "1", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                                                          "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                                                          "</div>"],
                ["Sr_No": "2", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "3", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "4", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "5", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "6", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "7", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "8", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "9", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "10", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "11", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "12", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"<div class=\" progress\" style=\"width:100%; height:100%\">55\n" +
                        "<div class=\"center valign determinate\" style=\"width: 70%\" value=\"55\">70%</div>\n" +
                        "</div>"],
                ["Sr_No": "13", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "14", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "15", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "16", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "17", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "18", "Subject": "HTML", "Date": "13/4/2016", "Time":"10:00", "Result": "Pass","Percentage":"87%"],
                ["Sr_No": "19", "Subject": "JavaScript", "Date": "12/4/2016", "Time":"12:00", "Result": "Pass","Percentage":"77%"]]
        render staticData as JSON
    }

    def create() {

//        answerOption blank: false
        def user = new User(fName: "Akshay",lName:  "Sharma",userName: "akshay",email:  "akshay@gmail.com",password:  "1")

        user.save()
        println(User.findByFName("akshay").lName)
        println(User.list())
        User.list().each {println(it.dump())}
        render user
    }

    /*Database used in page */
    def createUser() {
         def user = new User(fName: params.first_name,lName: params.last_name,userName: params.uname,email: params.cemail,password: params.cpassword)
         if(user.save()) {
             flash.message = "Account Successfully Created"
         } else {
             flash.message = "Account Already Exist"
         }
        redirect(action: 'login')
    }

    def accountValidation() {
        def user = User.findByUserName(params.username)
        if ( user && user.password == params.password) {
            flash.message = "Welcome to test.com"
            userName = user.fName
            redirect(action: 'dashBoard', params: [name: userName])
        } else {
            flash.message = "Username or Password is invalid"
            redirect(action: 'login')
        }
    }

    def createQuestion() {
        def subject = Subject.findAll()
        return [subject:  subject,params: [name: userName]]
    }

    def saveQuestion() {
        def subject = Subject.findBySubjectName(params.subjectName)
        def question = new Question(question:params.question, option1:params.option1, option2: params.option2, option3:params.option3, option4:params.option4, answerOption: params.answer, subject: subject)
        if (subject && question.save()) {
            flash.message = "Successfully stored"
        } else {
            flash.message = "Sorry sir can't store data"
        }
        redirect(action: 'createQuestion')
    }

    def createSubject(){

    }

    def saveSubject() {
        def subject = new Subject(subjectName: params.subjectName)
        if (subject.save()) {
            flash.message = "Successfully stored"
        } else {
            flash.message = "Sorry sir can't store data"
        }
        redirect(action: 'createSubject', params: [name: userName])
    }

    def sendQuestions() {
        int questionIndex = params.count.toInteger()
        def data = ["key": questions[questionIndex]] as JSON
        render data
    }

    def displayAllSubject(){
        println(params)
        def subjectDetails = Subject.getAll()
        def data = subjectDetails.collect{
            [Sr_No:it.id,
             Subject:it.subjectName,
             dateCreated:it.dateCreated.dateString,
             lastUpdated:it.lastUpdated.dateString,
             Total_questions:it.questions.size()]
        }
        render data as JSON
    }

    def updateSubject(){
        println(params)
//        Subject subject =  new Subject(params)
//
////        subject.subjectName = "CSS"
//        println(subject)
//        println(subject.subjectName)

//        subject.save(flush: true,failOnError: true)
    }


}
