<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <link rel="shortcut icon" href="${APP_PATH}/static/fonts/icon.png">
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/animate-custom.css" />
    <script src="${APP_PATH}/static/js/jquery-3.5.1.min.js"></script>
</head>
<body>

<div class="container">

    <header>
        <h1>CAPTITAL NORMAL UNIVERSITY <span>Cultivation management system</span></h1>
        <nav class="codrops-demos">
            <span>请选择您的<strong>"角色"</strong></span>
            <a href="#to_stu_login" class="current-demo">学生 &nbsp;</a>
            <a href="#to_tea_login">教师 &nbsp;</a>
            <a href="#to_sec_login">教秘 &nbsp;</a>
        </nav>
    </header>

    <section>
        <div id="container_demo" >
            <a class="hiddenanchor" id="to_stu_login"></a>
            <a class="hiddenanchor" id="to_tea_login"></a>
            <a class="hiddenanchor" id="to_sec_login"></a>
            <div id="wrapper">

                <div id="stu_login" class="animate form">
                    <form autocomplete="on">
                        <h1>Log in</h1>
                        <p>
                            <label for="stu_ID" class="uname" data-icon="u" > Your user ID </label>
                            <input id="stu_ID" name="id" required="required" type="text" placeholder="my userID"/>
                        </p>
                        <p>
                            <label for="stu_password" class="youpasswd" data-icon="p"> Your password </label>
                            <input id="stu_password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
                        </p>
                        <p class="login button">
                            <input type="button" value="Login" id="stu_login_btn"/>
                        </p>
                        <p class="character">
                            <a>学生登录</a>
                        </p>
                    </form>
                </div>

                <div id="tea_login" class="animate form">
                    <form autocomplete="on">
                        <h1>Log in</h1>
                        <p>
                            <label for="tea_ID" class="uname" data-icon="u" > Your user ID </label>
                            <input id="tea_ID" name="id" required="required" type="text" placeholder="my userID"/>
                        </p>
                        <p>
                            <label for="tea_password" class="youpasswd" data-icon="p"> Your password </label>
                            <input id="tea_password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
                        </p>
                        <p class="login button">
                            <input type="button" value="Login" id="tea_login_btn"/>
                        </p>
                        <p class="character">
                            <a>教师登录</a>
                        </p>
                    </form>
                </div>

                <div id="sec_login" class="animate form">
                    <form autocomplete="on">
                        <h1>Log in</h1>
                        <p>
                            <label for="sec_ID" class="uname" data-icon="u" > Your user ID </label>
                            <input id="sec_ID" name="id" required="required" type="text" placeholder="my userID"/>
                        </p>
                        <p>
                            <label for="sec_password" class="youpasswd" data-icon="p"> Your password </label>
                            <input id="sec_password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
                        </p>
                        <p class="login button">
                            <input type="button" value="Login" id="sec_login_btn"/>
                        </p>
                        <p class="character">
                            <a>教秘登录</a>
                        </p>
                    </form>
                </div>

            </div>
        </div>
    </section>

</div>
<script>
    //角色切换按钮样式
    $(".codrops-demos a").click(function (){
        $(".codrops-demos a").not(this).removeClass("current-demo");
        $(this).addClass("current-demo");
    });

    //学生登录
    $("#stu_login_btn").click(function (){
        let userID = $("#stu_ID").val();
        let password = $("#stu_password").val();
        if(userID!=(null||"")&&password!=(null||"")){
            $.ajax({
                url: "${APP_PATH}/stu",
                type: "POST",
                data: $("#stu_login form").serialize(),
                success: function (result){
                    if(result.code==100){
                        window.location.href = "${APP_PATH}/stuIndex";
                    }else {
                        alert("登录失败，"+result.extend.msg+"！");
                    }
                }
            });
        }else{
            alert("请填写用户名和密码！");
        }
    });

    //教师登录按钮点击事件
    $("#tea_login_btn").click(function (){
        let userID = $("#tea_ID").val();
        let password = $("#tea_password").val();
        if(userID!=(null||"")&&password!=(null||"")){
            $.ajax({
                url: "${APP_PATH}/tea",
                type: "POST",
                data: $("#tea_login form").serialize(),
                success: function (result){
                    if(result.code==100){
                        window.location.href = "${APP_PATH}/teaIndex";
                    }else {
                        alert("登录失败，"+result.extend.msg+"！");
                    }
                }
            });
        }else{
            alert("请填写用户名和密码！");
        }
    });

    //教秘登录按钮点击事件
    $("#sec_login_btn").click(function (){
        let userID = $("#sec_ID").val();
        let password = $("#sec_password").val();
        if(userID!=(null||"")&&password!=(null||"")){
            $.ajax({
                url: "${APP_PATH}/sec",
                type: "POST",
                data: $("#sec_login form").serialize(),
                success: function (result){
                    if(result.code==100){
                        window.location.href = "${APP_PATH}/secIndex";
                    }else {
                        alert("登录失败，"+result.extend.msg+"！");
                    }
                }
            });
        }else{
            alert("请填写用户名和密码！");
        }
    });

</script>
</body>
</html>
