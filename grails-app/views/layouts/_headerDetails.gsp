<div class="header">
    <nav class="brown darken-4">
        <div class="container">
            <div class="nav-wrapper">
                <div class="col s12">
                    <a href="#" class="brand-logo tooltipped"data-position="bottom" data-delay="50" data-tooltip="Test Home">Test</a>
                    %{--<span class="right">Exit Test</span>--}%
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>

                    <!-- ******************************* -->
                    <!-- Menu -->
                    <!-- ******************************* -->
                    <ul class="right hide-on-med-and-down">
                        <li>
                            <a href="dashBoard" class="tooltipped authentication" data-position="bottom" data-delay="50" style="display:none" data-tooltip="Home">
                                <i class="material-icons left">dashboard</i>Home
                            </a>
                        </li>
                        <li>
                            <a href="" class="dropdown-button1 authentication" data-activates="test1" style="display:none">
                                <i class="material-icons left">receipt</i>Test
                            </a>
                        </li>

                        <%if(params.admin == true) { %>
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
                        <%}%>
                        <li>
                            <a href="" data-activates="user" class="waves-effect waves-teal dropdown-button authentication" style="display:none">
                                <i class="material-icons left">perm_identity</i>Hi <span id="userName">${params.name}</span>
                            </a>
                        </li>
                    </ul>

                    <!-- ******************************* -->
                    <!-- User sub menu -->
                    <!-- ******************************* -->
                    <ul class="right dropdown-content" id="user">
                        <li><a href="login" class="white-text center brown darken-4">Logout</a> </li>
                    </ul>

                    <!-- ******************************* -->
                    <!-- Test sub-menu -->
                    <!-- ******************************* -->
                    <ul class="right dropdown-content" id="test1">
                        <% subject = com.exam.Subject.getAll()%>
                        <% subject.each {%>
                            <li>
                                <g:link controller="page" action="home" params="[subjectName:it.subjectName]"
                                         class="white-text center waves-effect waves-teal brown darken-4">
                                         ${it.subjectName}</g:link>
                            </li>
                        <%}%>
                    </ul>

                    <!-- ******************************* -->
                    <!-- Mobile view menu -->
                    <!-- ******************************* -->
                    <ul class="side-nav white-text brown darken-4" id="mobile-demo">
                        <li><a href="dashBoard" class="waves-effect waves-teal white-text flow-text center-align">Home</a></li>
                        <li><div class="divider"></div></li>
                        <li><a href="" class="waves-effect waves-teal flow-text dropdown-button white-text center-align authentication" data-activates="test1" style="display:none">Test</a></li>
                        <li><div class="divider"></div></li>
                        <li><a href="login" class="waves-effect waves-teal flow-text center-align white-text authentication" style="display:none">Log out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div> <!-- end header-->