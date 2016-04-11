%{--<div class="question_details">--}%
    %{--<div class="question-header">--}%
        %{--Subject:---}%
        %{--<span class="subject">Ruby on Rails</span>--}%
        %{--<span class="time">Time: <time id="time" style="color: #000000;">1:00:00</time></span>--}%
    %{--</div><!-- end question_header -->--}%
    %{--<div class="question_body">--}%

        %{--<span class="question" id="question">What is ROR</span>--}%
        %{--<div class="test_answers">--}%
            %{--<input type="radio" name="answer" id="id1" class="options"  />--}%
            %{--<label for="id1"  id="option1">Ruby on Rails</label> </br>--}%

            %{--<input type="radio" name="answer" id="id2" class="options"/>--}%
            %{--<label for="id2" id="option2">Rails on Ruby</label></br>--}%

            %{--<input type="radio" name="answer" id="id3" class="options"/>--}%
            %{--<label for="id3" id="option3">Ruby on Ruby</label> </br>--}%

            %{--<input type="radio" name="answer" id="id4" class="options"/>--}%
            %{--<label for="id4" id="option4"> Rails on Rails </label></br>--}%
        %{--</div>--}%

        %{--<div class="section">--}%
            %{--<div id="submit_button">--}%
                   %{--<span><input type="submit" class="btn" value="Submit" name="Submit"></span>--}%
                %{--<span><input type="button" class="right btn col s12 m3 offset-m1 l3 offset-l1 " id="next" value="next" name="Next"></span>--}%
                %{--<span><input type="button" class="right btn col s12 m3 l3" id="previous" value="Previous" name="Previous"></span>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div><!-- end question -->--}%
%{--</div> <!-- end question_details -->--}%


<div class="card">
    <div class="card-title">
        <div class="row">
            <div class="section subject_time">
                <div class="col s11 offset-s1 m7 l4">
                    <span class="section" style="padding-left: 5%">Subject: Ruby on Rails</span>
                </div>
                    %{--<div class="divider hide-on-med-and-up"></div>--}%
                <div class="col s11 offset-s2 m4  l4 offset-l4 time_details">Time: <time id="time">1:00:00</time></div>
            </div>
        </div>
        <div class="divider"></div>
    </div>

    <div class="card-content">
        <span class="question flow-text strong " id="question">What is ROR</span>
        <div class="test_answers">
            <form id="myForm">
                <input type="radio" name="answer" id="id1" class="options option1" value="option1"  />
                <label for="id1" class="option" id="option1">Ruby on Rails</label> </br>

                <input type="radio" name="answer" id="id2" class="options option2" value="option2"/>
                <label for="id2" class="option" id="option2">Rails on Ruby</label></br>

                <input type="radio" name="answer" id="id3" class="options option3" value="option3"/>
                <label for="id3" class="option" id="option3">Ruby on Ruby</label> </br>

                <input type="radio" name="answer" id="id4" class="options option4" value="option4"/>
                <label for="id4" class="option" id="option4">Rails on Rails </label></br>
            </form>
        </div>
    </div>

    <div class="card-action">
        <div class="section" style="padding-bottom: 6%">
            <div id="submit_button">
                %{--<span><input type="submit" class="btn" value="Submit" name="Submit"></span>--}%
                <div class="row">
                    <div class="right col s12 m10 offset-m1 l10 offset-l1">
                        <span><input type="button" class="btn-large col s12 m3 offset-m1 l4 offset-l2 " id="previous" value="previous" name="Previous"></span>
                        <span><input type="button" class=" btn-large col s12 m3 offset-m1 l4 offset-l1 " id="next" value="next" name="Next"></span>
                        <span><input type="button" class="submit_test hide-on-large-only btn-large col s12 m3 offset-m1 blue" id="submit_test" value="submit_test" name="submit_test"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


