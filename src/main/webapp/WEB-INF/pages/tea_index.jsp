<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师教务系统</title>
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <link rel="shortcut icon" href="${APP_PATH}/static/fonts/icon.png">
    <script src="${APP_PATH}/static/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${APP_PATH}/static/css/my.css" rel="stylesheet"/>
</head>
<body>
<%--导航栏--%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand">教务系统（教师）</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" id="select_ul">
                <li class="active"><a href="javascript:;" id="teachingManagement">授课管理 <span class="sr-only">(current)</span></a></li>
                <li><a href="javascript:;" id="gradesManagement">成绩管理</a></li>
                <li><a href="javascript:;" id="coursesTaught">已授课程</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>当前用户：${sessionScope.user.id} ${sessionScope.user.username}</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">操作 <span class="caret"></span></a>
                    <ul class="dropdown-menu" style="min-width: 60px">
                        <li><a href="javascript:;">修改密码</a></li>
                        <li><a href="${APP_PATH}/logout">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<%--授课管理--%>
<div class="container-fluid show" id="teachingManagementIndex">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered table-condensed">
                <thead style="font-size: 13px">
                <tr>
                    <th>课程号</th>
                    <th>课程性质</th>
                    <th>课程名</th>
                    <th>开课专业(可修改)</th>
                    <th>前导课(可修改)</th>
                    <th>后续课(可修改)</th>
                    <th>课程属性(可修改)</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<%--成绩管理--%>
<div class="container-fluid" id="gradesManagementIndex">
    <div class="row">
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked"></ul>
        </div>
        <div class="col-md-9">
            <table class="table table-hover">
                <thead style="font-size: 13px">
                <tr>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>课程性质</th>
                    <th>课程状态</th>
                    <th>成绩(可修改)</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<%--已授课程--%>
<div class="container-fluid" id="coursesTaughtIndex">
    <div class="row">
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked"></ul>
        </div>
        <div class="col-md-8">
            <table class="table table-hover table-condensed">
                <thead style="font-size: 13px">
                <tr>
                    <th>学号
                        <button type="button" class="btn btn-warning btn-xs" id="sort_by_id">排序
                            <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></button>
                    </th>
                    <th>姓名</th>
                    <th>课程状态</th>
                    <th>成绩
                        <button type="button" class="btn btn-warning btn-xs" id="sort_by_grade">排序
                            <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></button>
                    </th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<script>

    let teacherName = "${sessionScope.user.username}";
    let courseNames = "";
    let firstTeachedCourseName;

    $(function (){
        getTeachingCourses(teacherName);
        setTimeout("getUnTeachedCourseNames(courseNames)",1000);
    });

    //导航栏选项点击
    $("#select_ul li").click(function (){
        $("#select_ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let select_id = "#" + $(this).find("a").attr("id")+"Index";
        if(select_id == "#teachingManagementIndex"){
            getTeachingCourses(teacherName);
        }else if(select_id == "#gradesManagementIndex"){
            getUnTeachedCourseNames(courseNames);
        }else if(select_id == "#coursesTaughtIndex"){
            getTeachedCourse("course",firstTeachedCourseName);
        }
        $(".container-fluid").removeClass("show");
        $(select_id).addClass("show");
    });

    //获取所有自己教授的课程信息
    function getTeachingCourses(name){
        courseNames = "";
        $("#teachingManagementIndex tbody").empty();
        $.ajax({
            url: "${APP_PATH}/teachingCourses/"+name,
            type: "GET",
            success: function (result){
                let teachingCourses = result.extend.teachingCourses;
                $.each(teachingCourses,function (){
                    let course_id = $("<td></td>").append(this.courseId);
                    let course_name = $("<td></td>").append(this.courseName);
                    courseNames += this.courseName + "-";
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_major = $("<td contenteditable='true'></td>").append(this.courseMajor);
                    let preliminary_course = $("<td contenteditable='true'></td>").append(this.preliminaryCourse==null?"无":this.preliminaryCourse);
                    let followup_course = $("<td contenteditable='true'></td>").append(this.followupCourse==null?"无":this.followupCourse);
                    let course_attributes = $("<td contenteditable='true'></td>").append(this.courseAttributes==null?"无":this.courseAttributes);
                    let update_btn = $("<td></td>").append($("<button type='button' class='btn btn-success btn-sm updateBtn'>修改</button>"));
                    $("<tr></tr>").append(course_id)
                        .append(course_name)
                        .append(course_nature)
                        .append(course_major)
                        .append(preliminary_course)
                        .append(followup_course)
                        .append(course_attributes)
                        .append(update_btn)
                        .appendTo("#teachingManagementIndex tbody");
                });
                courseNames = courseNames.substring(0,courseNames.length-1);
            }
        });
    }

    //授课管理修改按钮
    $(document).on("click",".updateBtn",function (){
        let update_data = "";
        update_data += $(this).parent().parent().find("td").eq(0).text() + "-";
        for(let i=3; i<7; i++){
            update_data += $(this).parent().parent().find("td").eq(i).text() +"-";
        }
        update_data = update_data.substring(0,update_data.length-1);
        $.ajax({
            url: "${APP_PATH}/updateCourse/"+update_data,
            type: "PUT",
            success: function (){
                location.reload();
            }
        });
    });

    //获取未授课程名和已授课程名
    function getUnTeachedCourseNames(courseNames){
        console.log(courseNames);
        $("#gradesManagementIndex ul").empty();
        $("#coursesTaughtIndex ul").empty();
        $.ajax({
            url: "${APP_PATH}/unTeachedCourses/"+courseNames,
            type: "GET",
            success: function (result){
                //未授课程名
                let unTeachedCourseNames = result.extend.unTeachedCourseNames;
                //已授课程名
                let teachedCourseNames = result.extend.teachedCourseNames;
                console.log("未授课程："+unTeachedCourseNames);
                console.log("已授课程："+teachedCourseNames);
                //成绩管理侧边导航栏生成
                if(unTeachedCourseNames.length!=0){
                    $("#gradesManagementIndex ul").empty();
                    $("#gradesManagementIndex table").removeClass("hide_this");
                    $.each(unTeachedCourseNames,function (index){
                        if(index==0){
                            $("<li role='presentation' class='active'><a href='javascript:;'>"+this+"</a></li>").appendTo("#gradesManagementIndex ul");
                            getUnTeachedCourse(this);
                        }else {
                            $("<li role='presentation'><a href='javascript:;'>"+this+"</a></li>").appendTo("#gradesManagementIndex ul");
                        }
                    });
                }else {
                    $("#gradesManagementIndex ul").empty();
                    $("#gradesManagementIndex table").addClass("hide_this");
                    $("<h2>没有未授的课程</h2>").appendTo("#gradesManagementIndex ul");
                }
                //已授课程侧边导航栏生成
                if(teachedCourseNames.length!=0){
                    $("#coursesTaughtIndex ul").empty();
                    $("#coursesTaughtIndex table").removeClass("hide_this");
                    $.each(teachedCourseNames,function (index){
                        firstTeachedCourseName = this;
                        if(index==0){
                            $("<li role='presentation' class='active'><a href='javascript:;'>"+this+"</a></li>").appendTo("#coursesTaughtIndex ul");
                        }else {
                            $("<li role='presentation'><a href='javascript:;'>"+this+"</a></li>").appendTo("#coursesTaughtIndex ul");
                        }
                    });
                }else {
                    $("#coursesTaughtIndex ul").empty();
                    $("#coursesTaughtIndex table").addClass("hide_this");
                    $("<h2>没有已授的课程</h2>").appendTo("#coursesTaughtIndex ul");
                }
            }
        });
    }

    //成绩管理侧边导航栏选项点击
    $(document).on("click","#gradesManagementIndex ul li",function (){
        $("#gradesManagementIndex ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let text = $(this).find("a").text();
        getUnTeachedCourse(text);
    });

    //获取指定未修课程
    function getUnTeachedCourse(courseName){
        $("#gradesManagementIndex tbody").empty();
        $.ajax({
            url: "${APP_PATH}/course/"+courseName,
            type: "GET",
            success: function (result){
                let unTeachedCourse = result.extend.courseList;
                $.each(unTeachedCourse,function (){
                    let course_selectedId = $("<td></td>").append(this.courseSelectedId);
                    let course_selectedStu = $("<td></td>").append(this.courseSelectedStu);
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_status = $("<td></td>").append(this.courseStatus);
                    let course_grade = $("<td contenteditable='true'></td>").append(this.grade==null?"未录入":this.grade);
                    let update_btn = $("<td></td>").append($("<button type='button' class='btn btn-success btn-sm updateGradeBtn'>提交</button>"));
                    $("<tr></tr>").append(course_selectedId)
                        .append(course_selectedStu)
                        .append(course_nature)
                        .append(course_status)
                        .append(course_grade)
                        .append(update_btn)
                        .appendTo("#gradesManagementIndex tbody");
                });
                $("<tr><td colspan='5'></td><td><button type='button' class='btn btn-info taughtBtn'>已授完该课程</button></td></tr>").appendTo("#gradesManagementIndex tbody");
            }
        });
    }

    //成绩修改提交按钮
    $(document).on("click",".updateGradeBtn",function (){
        let grade = $(this).parent().parent().find("td").eq(4).text();
        if(grade=="未录入"){
            alert("请录入成绩!");
            return false;
        }
        let courseName = $("#gradesManagementIndex ul .active a").text();
        let studentID = $(this).parent().parent().find("td").eq(0).text();
        let updateGradeData = courseName + "-" + studentID + "-" + grade;
        $.ajax({
            url: "${APP_PATH}/updateGrade/"+updateGradeData,
            type: "PUT",
            success: function (){
                getUnTeachedCourse(courseName);
            }
        });
    });

    //已授完课程按钮
    $(document).on("click",".taughtBtn",function (){
        let flag = true;
        let gradeTds = $("#gradesManagementIndex tbody tr");
        $.each(gradeTds,function (){
            if($(this).find("td").eq(4).text()=="未录入"){
                alert("成绩未完全录入!");
                flag = false;
                return false;
            }
        });
        if(!flag){
            return false;
        }
        let courseName = $("#gradesManagementIndex ul .active a").text();
        if(confirm("确认已授完【"+courseName+"】这门课程吗？")){
            $.ajax({
                url: "${APP_PATH}/updateCourseStatus/"+courseName,
                type: "PUT",
                success: function (){
                    $("#gradesManagement").trigger("click");
                }
            });
        }
    });

    //已授课程侧边导航栏选项点击
    $(document).on("click","#coursesTaughtIndex ul li",function (){
        $("#coursesTaughtIndex ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let courseName = $(this).find("a").text();
        getTeachedCourse("course",courseName);
    });

    //获取指定已授课程
    function getTeachedCourse(url,courseName){
        $("#coursesTaughtIndex tbody").empty();
        $.ajax({
            url: "${APP_PATH}/"+url+"/"+courseName,
            type: "GET",
            success: function (result){
                let teachedCourse = result.extend.courseList;
                $.each(teachedCourse,function (){
                    let course_selectedId = $("<td></td>").append(this.courseSelectedId);
                    let course_selectedStu = $("<td></td>").append(this.courseSelectedStu);
                    let course_status = $("<td></td>").append(this.courseStatus);
                    let grade = $("<td></td>").append(this.grade);
                    $("<tr></tr>").append(course_selectedId)
                        .append(course_selectedStu)
                        .append(course_status)
                        .append(grade)
                        .appendTo("#coursesTaughtIndex tbody");
                });
            }
        });
    }

    //按成绩排序按钮
    $("#sort_by_grade").click(function (){
        let courseName = $("#coursesTaughtIndex div.col-md-2 ul li.active").text();
        getTeachedCourse("sortCourse",courseName);
    });

    //按学号排序按钮
    $("#sort_by_id").click(function (){
        let courseName = $("#coursesTaughtIndex div.col-md-2 ul li.active").text();
        getTeachedCourse("course",courseName);
    });
</script>
</body>
</html>
