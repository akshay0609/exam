package testdemo

import com.exam.Question
import com.exam.Subject
import com.result.Result
import com.userInfo.User
import grails.converters.JSON


class PageController {

    //Initialize variables
    def questions       = []
    def userAnswer      = [:]
    def radioOptions    = [:]
    def result          = [:]
    def userName        = "Akshay"
    def subject         = ""
    def admin           = false

    def index(){}
    def demo() {}

    def homePage() {
        return [params: [name: null, admin: admin]]
    }

    def login() {
        return [params: [name: null, admin: admin]]
    }

    def createSubject(){
       def clientID = "376348951406-noo2ek0lk9sjvr8e1g3qt3i3fp6vkjbq.apps.googleusercontent.com"
       def clientSecret = "Wi4vuqNgQuZJdA4WSUf5sNEP"

       return [params: [name: userName, admin:admin]]
    }

    def dashBoard() {
        return [params: [name: userName,admin:admin]]
    }

    def result() {
        subject = params.subjectName
        return [params: [name: userName,admin:admin]]
    }

    def home() {
        userAnswer = [:]
        radioOptions = [:]
        result = [:]
        initializeQuestions()
        return [params: [name: userName, subjectName: params.subjectName,admin:admin]]
    }

    /**
     * Initialize questions
     */
    def initializeQuestions() {
        Subject subject = Subject.findBySubjectName(params.subjectName)
        questions = subject.questions.collect{
            [question   :   it.question,
            option1     :   it.option1,
            option2     :   it.option2,
            option3     :   it.option3,
            option4     :   it.option4,
            ans         :   it.answerOption]
        }
    }

    /**
     *check Answer method used for checking correct answer
     */
    def checkAnswer() {
        int questionIndex = params.count.toInteger()
        if (questions[questionIndex].ans == params.option) {
            userAnswer[questionIndex]   = 1
            radioOptions[questionIndex] = params.option
            render 'write answer'
        } else {
            userAnswer[questionIndex]   = 0
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

        int sum                     =  userAnswer.values().sum()
        float percentage            = (sum/10)*100

        int correctAnswerCount      = userAnswer.values().count {it==1}
        int wrongAnswerCount        = userAnswer.values().count {it==0}

        def questionsAnswers        = (0..9).collect{
            [questions              : questions[it].question,
             correctAnswer          : questions[it].(questions[it].ans),
             user_answer            : userAnswer[it] == 0?  questions[it].(radioOptions[it]) : null]
        }

        String resultStatus         = (percentage > 30)? "Pass" : "Fail"

        def resultDetails           = [correctAnswerCount : correctAnswerCount,
                                       wrongAnswerCount   : wrongAnswerCount,
                                       questionsAnswers   : questionsAnswers,
                                       percentage         : percentage,
                                       resultStatus       : resultStatus]

        /*Stored in Database*/
        try {
            Result result           = new Result( percentage      : percentage,
                                        resultStatus    : resultStatus)
            result.subject          = Subject.findBySubjectName(subject)
            result.user             = User.findByUserName(userName)

            result.save(flush: true)
        } catch (Exception e) {
            println e.message
        }

        def data                    = ["key": resultDetails] as JSON
        render data
    }

    def jsGrid() {

        def results = User.findByUserName(userName).results

        def data = results.collect{
            [ID         : it.id,
             Subject    : it.subject.subjectName,
             Date       : it.dateCreated.dateString,
             Result     : it.resultStatus,
             Percentage : "<div class=\" progress\" style=\"width:100%; height:100%\">0\n" +
                          "<div class=\"center valign determinate\" style=\"width: ${it.percentage}%\" value=\"\">${it.percentage}%</div>\n" +
                          "</div>"]
        }
        render data as JSON
    }

    /**
     * Create new user
     */
    def createUser() {
        println (params)
         def user = new User(fName      : params.first_name,
                             lName      : params.last_name,
                             userName   : params.uname,
                             email      : params.cemail,
                             password   : params.cpassword)

         if(user.save()) {
             print("!111111111111111111111111")
             flash.message = "Account Successfully Created"
             userName = user.fName
             admin = user.admin
             redirect(action: 'dashBoard', params: [name: userName])
         } else {
             print("!1111111222222222222222222221111")
             flash.message = "Account Already Exist"
             redirect(action: 'dashBoard')
         }

    }

    /**
     * Check authorize user
     */
    def accountValidation() {
        def user = User.findByUserName(params.username)
        if ( user && user.password == params.password) {

            flash.message  = "Welcome to test.com"
            userName = user.fName
            admin = user.admin
            redirect(action: 'dashBoard', params: [name: userName])

        } else {
            flash.message = "Username or Password is invalid"
            redirect(action: 'login')
        }
    }

    /**
     * Create new question only access for admin
     */
    def createQuestion() {
        def subject = Subject.findAll()
        return [subject: subject, params: [name: userName, admin:admin]]
    }

    /**
     * new question save in database
     */
    def saveQuestion() {
        def subject = Subject.findBySubjectName(params.subjectName)
        def question = new Question(question    :params.question,
                                    option1     :params.option1,
                                    option2     : params.option2,
                                    option3     :params.option3,
                                    option4     :params.option4,
                                    answerOption: params.answer,
                                    subject     : subject)
        if (subject && question.save()) {
            flash.message = "Successfully stored"
        } else {
            flash.message = "Sorry sir can't store data"
        }
        redirect(action: 'createQuestion')
    }

    /**
     * new subject save in database
     */
    def saveSubject() {
        def subject = new Subject(subjectName: params.subjectName)
        if (subject.save()) {
            flash.message = "Successfully stored"
        } else {
            flash.message = "Sorry sir can't store data"
        }
        redirect(action: 'createSubject', params: [name: userName, admin:admin])
    }

    /**
     * new subject save in database
     */
    def sendQuestions() {
        int questionIndex   = params.count.toInteger()
        def data            = ["key": questions[questionIndex]] as JSON
        render data
    }

    /**
     * display all details of subject and send json format
     */
    def displayAllSubject(){
        def subjectDetails  = Subject.getAll()
        def data            = subjectDetails.collect{
            [ID                 :it.id,
             Subject            :it.subjectName,
             dateCreated        :it.dateCreated.dateString,
             lastUpdated        :it.lastUpdated.dateString,
             Total_questions    :it.questions.size()]
        }
        render data as JSON
    }

    /**
     * Update the subject
     */
    def updateSubject(){
        long id             =  params.ID.toInteger()
        Subject subject     = Subject.findById(id)
        subject.subjectName = params.Subject

        subject.save(flush: true,failOnError: true)
        def data            = [ID              :subject.id,
                               Subject         :subject.subjectName,
                               dateCreated     :subject.dateCreated.dateString,
                               lastUpdated     :subject.lastUpdated.dateString,
                               Total_questions :subject.questions.size()]
        render data as JSON
    }

    /**
     * Delete Subject
     */
    def deletedSubject() {
        long id           =  params.ID.toInteger()
        Subject subject   = Subject.findById(id)

        subject.delete(flush: true,failOnError: true)
        def data          = [OK:"Success"]
        render data as JSON
    }
}
