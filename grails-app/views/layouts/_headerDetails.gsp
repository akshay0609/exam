<div class="header">
    <nav class="pink darken-2">
        <div class="container">
            <div class="nav-wrapper">
                <div class="col s12">
                    <a href="#" class="brand-logo tooltipped"data-position="bottom" data-delay="50" data-tooltip="Test Home">Test</a>
                    %{--<span class="right">Exit Test</span>--}%
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a hred="#" class="tooltipped authentication" data-position="bottom" data-delay="50" style="display:none" data-tooltip="Home"><i class="material-icons left">dashboard</i>Home</a></li>
                        <li><a href="home" class="tooltipped authentication" data-position="bottom" data-delay="50" style="display:none" data-tooltip="Test"><i class="material-icons left">mode_edit</i>Test</a></li>
                        <li><a href="#" data-activates="user" class="waves-effect waves-teal dropdown-button authentication" style="display:none"><i class="material-icons left">perm_identity</i>Hi <span id="userName">${params.name}</span></a></li>
                    </ul>
                    <ul class="right dropdown-content" id="user">
                        <li><a href="login" class=" center pink white-text">Logout</a> </li>
                    </ul>
                    <ul class="side-nav white" id="mobile-demo">
                        <li><a href="#" class="waves-effect waves-teal flow-text center-align">Home</a></li>
                        <li><div class="divider"></div></li>
                        <li><a href="#" class="waves-effect waves-teal flow-text center-align authentication" style="display:none">Test</a></li>
                        <li><div class="divider"></div></li>
                        <li><a href="#" class="waves-effect waves-teal flow-text center-align authentication" style="display:none">Log out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div> <!-- end header-->