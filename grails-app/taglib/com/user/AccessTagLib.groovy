package com.user

class AccessTagLib {

    static namespace = "test"

    def accessControl = { attrs ->
        def userAdmin = attrs.userAdmin
        out << adminAccess(userAdmin)
    }

    def adminAccess(userAdmin){
        StringBuilder sb = new StringBuilder()
        if (userAdmin != false) {
            sb <<  """
                        <li>
                            <a href="createQuestion" class="authentication" style="display:none">
                                <i class="material-icons left">mode_edit</i>Create New Questions
                            </a>
                        </li>
                        <li>
                            <a href="createSubject" class="authentication" style="display:none">
                                <i class="material-icons left">subject</i>Add Subject
                            </a>
                        </li>
                    """
        }
        sb.toString()
    }

    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
}
