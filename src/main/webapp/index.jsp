<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>Member Project</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#sign_in").click(function(){$("#div_Sign_In").show(); });
            $("#sign_in").click(function(){$("#div_SignUp").hide(); });
            $("#sign_in").click(function(){$("#div_Delete").hide(); });

            $("#delete").click(function(){$("#div_Delete").show(); });
            $("#delete").click(function(){$("#div_SignUp").hide(); });
            $("#delete").click(function(){$("#div_Sign_In").hide(); });

            $("#Sign_Up_Button").click(function(){
                var name = document.getElementById("name").value;
                var phone = document.getElementById("phone").value;
                var id = document.getElementById("ID").value;
                var pass = document.getElementById("password").value;
                if (name=="") {
                    alert("Enter your name");
                }else if(phone==""){
                    alert("Enter your phone");
                }else if(id==""){
                    alert("Enter your ID");
                }else if(pass == ""){
                    alert("Enter your PassWord");
                }else{
                    alert("Success");
                }
            });

            $("#sign_in_member").click(function(){
                var id = document.getElementById("SignIn_ID").value;
                var pass = document.getElementById("SignIn_PW").value;
                if(id==""){
                    alert("Enter your ID");
                }else if(pass == ""){
                    alert("Enter your PassWord");
                }else{

                    alert(id,pass);
                }
            });

            $("#delete_member").click(function(){
                var id = document.getElementById("Delete_ID").value;
                var pass = document.getElementById("Delete_PW").value;
                if(id==""){
                    alert("Enter your ID");
                }else if(pass == ""){
                    alert("Enter your PassWord");
                }else{
                    alert(id,pass);
                }
            });

        });
    </script>
</head>

<body>
<h2>Member management Project</h2>

<div id="div_SignUp">
    <form action="/hello-servlet" id ="form_sign_up" method="post">

        Name : <input id="name" type="text" name = "Sign_name"></br>

        Phone : <input id="phone" type="tel" name="phone"></br>

        ID : <input id="ID" type="text"></br>

        PassWord : <input id="password" type="password"></br>

        <hr size="3">
    </form>
    <button id="Sign_Up_Button" >Sign Up</button>
</div>

<div id="div_Sign_In" style="display: none;">
    <form action="/hello-servlet" method="get">
        <h3>Log in</h3>
        ID : <input id ="SignIn_ID" type="text"></br>
        PassWord : <input id="SignIn_PW" type="password"></br>
        <button id="sign_in_member">Log In</button>
        <hr size="3">

    </form>
</div>

<div id="div_Delete" style="display: none;">
    <form action="#" method="get">
        <h3>Delete Info</h3>

        ID : <input id ="Delete_ID" type="text"></br>
        PassWord : <input id="Delete_PW" type="password"></br>
        <button id="delete_member">Delete Info</button>

        <hr size="3">
    </form>
</div>

<button id="sign_in" >Log In</button>
<button id="delete" >Delete Info</button>

</body>
</html>