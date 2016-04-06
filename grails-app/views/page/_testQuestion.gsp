<script>
    $(document).ready(function () {
        var count = 0
        $.ajax({
            url: 'exam',
            data: {
                format: 'json'
            },
            data: {count:0},
            success: function(data) {
                var test = data.key
                $("#question").text(test.question)
                $("#option1").text(test.option1)
                $("#option2").text(test.option2)
                $("#option3").text(test.option3)
                $("#option4").text(test.option4)

            },
            type: 'GET'
        });

        $("#next").click(function(){
            count++;
            $.ajax({
                url: 'exam',
                data: {
                    format: 'json'
                },
                data: {count:count},
                success: function(data) {
                    var test = data.key
                    $("#question").text(test.question)
                    $("#option1").text(test.option1)
                    $("#option2").text(test.option2)
                    $("#option3").text(test.option3)
                    $("#option4").text(test.option4)
                },
                type: 'GET'
            });
        });

        $("#previous").click(function(){
            count--;
            $.ajax({
                url: 'exam',
                data: {
                    format: 'json'
                },
                data: {count:count},
                success: function(data) {
                    var test = data.key
                    $("#question").text(test.question)
                    $("#option1").text(test.option1)
                    $("#option2").text(test.option2)
                    $("#option3").text(test.option3)
                    $("#option4").text(test.option4)
                },
                type: 'GET'
            });
        })
    });
</script>

<div class="container" xmlns="http://www.w3.org/1999/html">
    <div class="row">
        <div class="col s2 m3 l2">
            <g:render template="/page/questionLists"/>
        </div>

        <div class="col s12 m9 l9">
            <div class="row">
                <g:render template="/page/question1"/>
            </div> <!-- end row -->
        </div><!-- end col s12 m9 l9 -->

    </div> <!-- end row -->
</div> <!-- end container -->
