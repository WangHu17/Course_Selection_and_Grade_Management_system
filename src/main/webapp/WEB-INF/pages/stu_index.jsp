<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生教务系统</title>
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
            <a class="navbar-brand">教务系统（学生）</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" id="select_ul">
                <li class="active"><a href="javascript:;" id="trainingPrograms">培养方案 <span class="sr-only">(current)</span></a></li>
                <li><a href="javascript:;" id="stuCurriculum">选课管理</a></li>
                <li><a href="javascript:;" id="gradeView">成绩查询</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>当前用户：${sessionScope.user.id} ${sessionScope.user.studentName}</a></li>
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
<%--培养方案--%>
<div class="container-fluid show" id="trainingProgramsIndex">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead style="font-size: 13px">
                    <tr>
                        <th>课程性质</th>
                        <th>课程号</th>
                        <th>课程名</th>
                        <th>开课专业</th>
                        <th>教师</th>
                        <th>课程属性</th>
                        <th>前导课</th>
                        <th>后续课</th>
                        <th>选择</th>
                    </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<%--选课管理--%>
<div class="container-fluid" id="stuCurriculumIndex">
    <div class="row">
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active" id="courses"><a href="javascript:;">所有已选课程</a></li>
                <li role="presentation" id="compulsory"><a href="javascript:;">必修课程</a></li>
                <li role="presentation" id="elective"><a href="javascript:;">选修课程</a></li>
                <li role="presentation" id="learned"><a href="javascript:;">已修课程</a></li>
                <li role="presentation" id="notlearned"><a href="javascript:;">未修课程</a></li>
            </ul>
        </div>
        <div class="col-md-9" id="courseIndex">
            <table class="table table-hover">
                <thead style="font-size: 13px">
                <tr>
                    <th>课程号</th>
                    <th>课程名</th>
                    <th>课程性质</th>
                    <th>课程状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<%--成绩查询--%>
<div class="container-fluid" id="gradeViewIndex">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <table class="table table-condensed">
                <thead style="font-size: 12px">
                <tr>
                    <th>课程号</th>
                    <th>课程名</th>
                    <th>课程性质</th>
                    <th>成绩</th>
                </tr>
                </thead>
                <tbody style="font-size: 11px"></tbody>
            </table>
        </div>
    </div>
</div>
<script>

    let ID = "${sessionScope.user.id}"
    let major = "${sessionScope.user.major}";

    $(function (){
        getTrainingProgram(major);
    });

    //获取培养方案
    function getTrainingProgram(major){
        $("#trainingProgramsIndex tbody").empty();
        $("#submitBtn").remove();
        $.ajax({
            url: "${APP_PATH}/train/"+major,
            type: "GET",
            success: function (result){
                let trainPrograms = result.extend.trainingPrograms;
                let selectedCourseId = result.extend.selectedCourseId;
                $.each(trainPrograms,function (){
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_id = $("<td></td>").append(this.courseId);
                    let course_name = $("<td></td>").append(this.courseName);
                    let course_major = $("<td></td>").append(this.courseMajor);
                    let course_teacher = $("<td></td>").append(this.courseTeacher);
                    let course_attributes = $("<td></td>").append(this.courseAttributes==null?"无":this.courseAttributes);
                    let preliminary_course = $("<td></td>").append(this.preliminaryCourse==null?"无":this.preliminaryCourse);
                    let followup_course = $("<td></td>").append(this.followupCourse==null?"无":this.followupCourse);
                    let select_box;
                    if($.inArray(this.courseId,selectedCourseId)!=-1){
                        select_box = $("<td></td>").append("已选");
                    }else {
                        select_box = $("<td></td>").append($("<input type='checkbox' class='check_course'/>"));
                    }
                    $("<tr></tr>").append(course_nature)
                                  .append(course_id)
                                  .append(course_name)
                                  .append(course_major)
                                  .append(course_teacher)
                                  .append(course_attributes)
                                  .append(preliminary_course)
                                  .append(followup_course)
                                  .append(select_box)
                                  .appendTo("#trainingProgramsIndex tbody");
                });
                let col = $("<div class='col-md-1 col-md-offset-11'></div>")
                    .append($("<button type='button' class='btn btn-info' id='submitBtn'>提交</button>"))

                $("<div class='row'></div>").append(col)
                    .appendTo($("#trainingProgramsIndex"));
            }
        });
    }

    //培养方案中选课提交按钮
    $(document).on("click","#submitBtn",function (){
        if($(".check_course:checked").length > 0){
            let selectIds = "";
            $.each($(".check_course:checked"), function (){
                selectIds += $(this).parent().parent().find("td").eq(1).text() + "-";
            });
            selectIds = selectIds.substring(0, selectIds.length-1);
            $.ajax({
                url: "${APP_PATH}/addCourse/"+selectIds,
                type: "POST",
                success: function (){
                    location.reload();
                }
            });
        }
    });

    //导航栏选项点击
    $("#select_ul li").click(function (){
        $("#select_ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let select_id = "#" + $(this).find("a").attr("id")+"Index";
        if(select_id == "#trainingProgramsIndex"){
            getTrainingProgram(major);
        }else if(select_id == "#stuCurriculumIndex"){
            getCourse("courses",ID);
        }else if(select_id == "#gradeViewIndex"){
            getGrade(ID);
        }
        $(".container-fluid").removeClass("show");
        $(select_id).addClass("show");
    });

    $("#stuCurriculumIndex ul li").css("width","150px").css("text-align","center");

    //选课管理侧边导航栏选项点击
    $("#stuCurriculumIndex ul li").click(function (){
        $("#stuCurriculumIndex ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let type = $(this).attr("id");
        getCourse(type,ID);
    });

    //获取课程(type代表课程性质或状态或者所有)
    function getCourse(type,ID){
        $("#courseIndex tbody").empty();
        $.ajax({
           url: "${APP_PATH}/"+type+"/"+ID,
           type: "GET",
           success: function (result){
                let courses = result.extend.courses;
                $.each(courses, function (){
                    let hidden_type = $("<td hidden></td>").append(type);
                    let hidden_id = $("<td hidden></td>").append(this.id);
                    let course_id = $("<td></td>").append(this.courseId);
                    let course_name = $("<td></td>").append(this.courseName);
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_status = $("<td></td>").append(this.courseStatus);
                    // let course_grade = $("<td></td>").append(this.grade==null?"无":this.grade);
                    let operation;
                    if(this.courseStatus == "未修"){
                        operation = $("<td><button type='button' class='btn btn-danger btn-xs deleteBtn'>删除</button></td>");
                    }else {
                        operation = $("<td></td>").append("无法删除");
                    }
                    $("<tr></tr>").append(hidden_type)
                                  .append(hidden_id)
                                  .append(course_id)
                                  .append(course_name)
                                  .append(course_nature)
                                  .append(course_status)
                                  .append(operation)
                                  .appendTo("#courseIndex tbody");
                });
           }
        });
    }

    //删除选课
    $(document).on("click",".deleteBtn",function (){
        let deleteCourseName = $(this).parent().parent().find("td").eq(3).text();
        let deleteId = $(this).parent().parent().find("td").eq(1).text();
        let nevType = "#" + $(this).parent().parent().find("td").eq(0).text();
        if(confirm("确认删除【"+deleteCourseName+"】吗？")){
            $.ajax({
                url: "${APP_PATH}/deleteCourse/"+deleteId,
                type: "DELETE",
                success: function (){
                    $(nevType).trigger("click");
                }
            });
        }
    });

    //成绩查询
    function getGrade(ID){
        $("#gradeViewIndex tbody").empty();
        $.ajax({
            url: "${APP_PATH}/grade/"+ID,
            type: "GET",
            success: function (result){
                let grades = result.extend.grade;
                $.each(grades, function (){
                    let course_id = $("<td></td>").append(this.courseId);
                    let course_name = $("<td></td>").append(this.courseName);
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_grade = $("<td></td>").append(this.grade);
                    $("<tr></tr>").append(course_id)
                        .append(course_name)
                        .append(course_nature)
                        .append(course_grade)
                        .appendTo("#gradeViewIndex tbody");
                });
            }
        });
    }

</script>
</body>
</html>
