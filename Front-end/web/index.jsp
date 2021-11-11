<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
               $('#hello').click(function() {
                   console.log("hello");
                   $.ajax({
                        url: "test?ac=view",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                
               }) 
            });
            
        </script>
    </head>
    <body>
        <a id="hello" href="#">hello</a>
        <div>TODO write content</div>
    </body>
</html>
