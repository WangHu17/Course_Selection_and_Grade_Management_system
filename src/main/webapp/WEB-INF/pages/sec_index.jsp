<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教秘教务系统</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
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
            <a class="navbar-brand">教务系统（教秘）</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" id="select_ul">
                <li class="active"><a href="javascript:;" id="trainingPrograms">培养方案 <span
                        class="sr-only">(current)</span></a></li>
                <li><a href="javascript:;" id="gradesManagement">成绩管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>当前用户：${sessionScope.user.id} ${sessionScope.user.username}</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">操作 <span class="caret"></span></a>
                    <ul class="dropdown-menu" style="min-width: 60px">
                        <li><a href="javascript:;">修改密码</a></li>
                        <li><a href="${APP_PATH}/logout">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<%--培养方案页面--%>
<div class="container-fluid show" id="trainingProgramsIndex">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead style="font-size: 13px">
                <tr>
                    <th>课程号</th>
                    <th>课程性质</th>
                    <th>课程名</th>
                    <th>开课专业</th>
                    <th>教师</th>
                    <th>前导课</th>
                    <th>后续课</th>
                    <th>课程属性</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>
<!-- 培养方案添加模态框 -->
<div class="modal fade" id="addTrainModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">添加培养方案</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程名*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseName" class="form-control" placeholder="courseName">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程性质*</label>
                        <div class="col-sm-3">
                            <select class="form-control" name="courseNature">
                                <option>学位课</option>
                                <option>选修课</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">开课专业*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseMajor" class="form-control" placeholder="courseMajor">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">教师*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseTeacher" class="form-control" placeholder="courseTeacher">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">前导课</label>
                        <div class="col-sm-9">
                            <input type="text" name="preliminaryCourse" class="form-control"
                                   placeholder="preliminaryCourse">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">后续课</label>
                        <div class="col-sm-9">
                            <input type="text" name="followupCourse" class="form-control" placeholder="followupCourse">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程属性</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseAttributes" class="form-control"
                                   placeholder="courseAttributes">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="save_train_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- 培养方案修改模态框 -->
<div class="modal fade" id="updateTrainModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">修改培养方案</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程号</label>
                        <div class="col-sm-9">
                            <p class="form-control-static"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程名*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseName" class="form-control" placeholder="courseName">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程性质*</label>
                        <div class="col-sm-3">
                            <select class="form-control" name="courseNature">
                                <option value="学位课">学位课</option>
                                <option value="选修课">选修课</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">开课专业*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseMajor" class="form-control" placeholder="courseMajor">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">教师*</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseTeacher" class="form-control" placeholder="courseTeacher">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">前导课</label>
                        <div class="col-sm-9">
                            <input type="text" name="preliminaryCourse" class="form-control"
                                   placeholder="preliminaryCourse">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">后续课</label>
                        <div class="col-sm-9">
                            <input type="text" name="followupCourse" class="form-control" placeholder="followupCourse">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">课程属性</label>
                        <div class="col-sm-9">
                            <input type="text" name="courseAttributes" class="form-control"
                                   placeholder="courseAttributes">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_train_btn">修改</button>
            </div>
        </div>
    </div>
</div>
<%--成绩管理页面--%>
<div class="container-fluid" id="gradesManagementIndex">
    <div class="row">
        <div class="col-md-3">
            <div class="btn-group">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    <span>专业</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" id="major_ul"></ul>
            </div>
            <div class="btn-group">
                <button type="button" id="class_btn" class="btn btn-info dropdown-toggle disabled"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span>班级</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" id="class_ul"></ul>
            </div>
            <form class="navbar-form navbar-left" id="search_form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入学号">
                </div>
                <button type="button" class="btn btn-default">搜索</button>
            </form>
            <div id="selected_major_and_class">
                <span class="label label-default"></span>
                <span class="label label-default"></span>
            </div>
            <ul class="nav nav-pills nav-stacked" id="course_ul"></ul>
        </div>
        <div class="col-md-9">
            <table class="table table-hover hide_this">
                <thead style="font-size: 13px">
                <tr>
                    <th>学号
                        <button type="button" class="btn btn-warning btn-xs" id="sort_by_id">排序
                            <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></button>
                    </th>
                    <th>姓名</th>
                    <th>课程性质</th>
                    <th>课程状态(可修改)</th>
                    <th>成绩(可修改)
                        <button type="button" class="btn btn-warning btn-xs" id="sort_by_grade">排序
                            <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></button>
                    </th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody style="font-size: 12px"></tbody>
            </table>
        </div>
    </div>
</div>

<script>

    let stu_ids_of_selected_class = [];
    let sort_type = "";

    $(function () {
        getTrainingProgram();
    });

    //导航栏选项点击
    $("#select_ul li").click(function () {
        $("#select_ul li").not(this).removeClass("active");
        $(this).addClass("active");
        let select_id = "#" + $(this).find("a").attr("id") + "Index";
        if (select_id == "#gradesManagementIndex") {
            getAllMajors();
        }
        $(".container-fluid").removeClass("show");
        $(select_id).addClass("show");
    });

    //获取培养方案
    function getTrainingProgram() {
        $("#trainingProgramsIndex tbody").empty();
        $("#addTrainBtn").remove();
        $.ajax({
            url: "${APP_PATH}/trains",
            type: "GET",
            success: function (result) {
                let trainPrograms = result.extend.allTrainProgram;
                $.each(trainPrograms, function () {
                    let course_id = $("<td></td>").append(this.courseId);
                    let course_nature = $("<td></td>").append(this.courseNature);
                    let course_name = $("<td></td>").append(this.courseName);
                    let course_major = $("<td></td>").append(this.courseMajor);
                    let course_teacher = $("<td></td>").append(this.courseTeacher);
                    let preliminary_course = $("<td></td>").append(!this.preliminaryCourse ? "无" : this.preliminaryCourse);
                    let followup_course = $("<td></td>").append(!this.followupCourse ? "无" : this.followupCourse);
                    let course_attributes = $("<td></td>").append(!this.courseAttributes ? "无" : this.courseAttributes);
                    let operation = $("<td></td>").append($("<button type='button' class='btn btn-success btn-sm updateTrain'>修改</button>")).append(" ")
                        .append($("<button type='button' class='btn btn-danger btn-sm deleteTrain'>删除</button>"));
                    $("<tr></tr>").append(course_id)
                        .append(course_nature)
                        .append(course_name)
                        .append(course_major)
                        .append(course_teacher)
                        .append(preliminary_course)
                        .append(followup_course)
                        .append(course_attributes)
                        .append(operation)
                        .appendTo("#trainingProgramsIndex tbody");
                });
                let col = $("<div class='col-md-1 col-md-offset-11'></div>")
                    .append($("<button type='button' class='btn btn-info' id='addTrainBtn'>添加</button>"))

                $("<div class='row'></div>").append(col)
                    .appendTo($("#trainingProgramsIndex"));
            }
        });
    }

    //培养方案"添加"按钮
    $(document).on("click", "#addTrainBtn", function () {
        $("#addTrainModal").modal();
    });

    //培养方案添加表单中的"保存"按钮
    $("#save_train_btn").click(function () {
        let courseName = $("#addTrainModal form input").eq(0).val();
        let courseMajor = $("#addTrainModal form input").eq(1).val();
        let courseTeacher = $("#addTrainModal form input").eq(2).val();
        if (courseName == "" || courseMajor == "" || courseTeacher == "") {
            alert("请填写完整所有带*的信息");
            return false;
        }
        $.ajax({
            url: "${APP_PATH}/train",
            type: "POST",
            data: $("#addTrainModal form").serialize(),
            success: function () {
                getTrainingProgram();
                $("#addTrainModal").modal("hide");
            }
        });
    });

    //培养方案"修改"按钮
    $(document).on("click", ".updateTrain", function () {
        let old_info = [];
        for (let i = 0; i < 8; i++) {
            old_info[i] = $(this).parent().parent().find("td").eq(i).text();
        }
        $("#updateTrainModal form p").text(old_info[0]);
        $("#updateTrainModal form select").val([old_info[1]]);
        for (let j = 0; j < 6; j++) {
            $("#updateTrainModal form div input").eq(j).val(old_info[j + 2]);
        }
        $("#updateTrainModal").modal();
    });

    //培养方案修改表单中的"修改"按钮
    $("#update_train_btn").click(function () {
        let courseId = $("#updateTrainModal form p").text();
        let courseName = $("#updateTrainModal form input").eq(0).val();
        let courseMajor = $("#updateTrainModal form input").eq(1).val();
        let courseTeacher = $("#updateTrainModal form input").eq(2).val();
        if (courseName == "" || courseMajor == "" || courseTeacher == "") {
            alert("请填写完整所有带*的信息");
            return false;
        }
        $.ajax({
            url: "${APP_PATH}/train/" + courseId,
            type: "PUT",
            data: $("#updateTrainModal form").serialize(),
            success: function () {
                getTrainingProgram();
                $("#updateTrainModal").modal("hide");
            }
        });
    });

    //培养方案"删除"按钮
    $(document).on("click", ".deleteTrain", function () {
        let courseName = $(this).parent().parent().find("td").eq(2).text();
        if (confirm("确认删除【" + courseName + "】吗？")) {
            let courseId = $(this).parent().parent().find("td").eq(0).text();
            $.ajax({
                url: "${APP_PATH}/train/" + courseId,
                type: "DELETE",
                success: function () {
                    getTrainingProgram();
                }
            });
        }
    });

    //获取专业列表
    function getAllMajors() {
        $("#major_ul").empty();
        $.ajax({
            url: "${APP_PATH}/majors",
            type: "GET",
            success: function (result) {
                let majors = result.extend.majors;
                $.each(majors, function () {
                    $("<li><a href='javascript:;'>" + this + "</a></li>").appendTo("#major_ul");
                });
            }
        });
    }

    //专业列表点击
    $(document).on("click", "#major_ul li a", function () {
        stu_ids_of_selected_class = [];
        $("#course_ul").empty();
        $("#search_result").remove();
        let major = $(this).text();
        $("#selected_major_and_class span").eq(0).text("");
        $("#selected_major_and_class span").eq(1).text("");
        $("#selected_major_and_class span").eq(0).text(major);
        if(!$("#selected_major_and_class").hasClass("show")){
            $("#selected_major_and_class").addClass("show");
        }
        $.ajax({
            url: "${APP_PATH}/courseNames/" + major,
            type: "GET",
            success: function (result) {
                $("#gradesManagementIndex table").removeClass("hide_this");
                getClasses(major);
                $("#class_btn").removeClass("disabled");
                let courseNames = result.extend.courseNames;
                if (courseNames.length != 0) {
                    $.each(courseNames, function (index) {
                        if (index == 0) {
                            $("<li role='presentation' class='active' style='width: 328px'><a href='javascript:;'>" + this + "</a></li>").appendTo("#course_ul");
                            getCourseList("course",this);
                        } else {
                            $("<li role='presentation' style='width: 328px'><a href='javascript:;'>" + this + "</a></li>").appendTo("#course_ul");
                        }
                    });
                } else {
                    $("<h3>该专业当前没有课程</h3>").appendTo("#course_ul");
                }
            }
        });
    });

    //获取班级列表
    function getClasses(major) {
        $("#class_ul").empty();
        $.ajax({
            url: "${APP_PATH}/classes/" + major,
            type: "GET",
            success: function (result) {
                let classes = result.extend.classes;
                $.each(classes, function () {
                    $("<li><a href='javascript:;'>" + this + "</a></li>").appendTo("#class_ul");
                });
            }
        });
    }

    //班级列表点击
    $(document).on("click", "#class_ul li a", function () {
        stu_ids_of_selected_class = [];
        let className = $(this).text();
        $("#selected_major_and_class span").eq(1).text(className);
        let student_ids = className + "-";
        let stu_id_tds = $("#gradesManagementIndex tbody tr");
        $.each(stu_id_tds,function (){
            student_ids += $(this).find("td").eq(0).text() + "-";
        });
        student_ids = student_ids.substring(0,student_ids.length-1);
        console.log(student_ids);
        $.ajax({
            url: "${APP_PATH}/stus/"+student_ids,
            type: "GET",
            success: function (result){
                let ids = result.extend.ids;
                stu_ids_of_selected_class = ids;
                console.log(ids);
                let trs = $("#gradesManagementIndex tbody tr");
                let stu_id = "";
                $.each(trs,function (){
                    $(this).removeClass("hide_this");
                    stu_id = $(this).find("td").eq(0).text();
                    if($.inArray(stu_id,ids)==-1){
                        $(this).addClass("hide_this");
                    }
                });
            }
        });
    });

    //成绩管理侧边课程列表导航栏选项点击
    $(document).on("click", "#course_ul li", function () {
        $("#selected_major_and_class span").eq(1).text("");
        $("#course_ul li").not(this).removeClass("active");
        $(this).addClass("active");
        stu_ids_of_selected_class = [];
        let text = $(this).find("a").text();
        getCourseList("course",text);
    });

    //获取指定课程的所有成绩信息
    function getCourseList(url,courseName) {
        $("#gradesManagementIndex tbody").empty();
        $.ajax({
            url: "${APP_PATH}/"+url+"/" + courseName,
            type: "GET",
            success: function (result) {
                let courseList = result.extend.courseList;
                console.log("选中班级中的学号"+stu_ids_of_selected_class);
                if (courseList.length != 0) {
                    $.each(courseList, function () {
                        let course_selectedId = $("<td></td>").append(this.courseSelectedId);
                        let course_selectedStu = $("<td></td>").append(this.courseSelectedStu);
                        let course_nature = $("<td></td>").append(this.courseNature);
                        let course_status = $("<td contenteditable='true'></td>").append(this.courseStatus);
                        let course_grade = $("<td contenteditable='true'></td>").append(this.grade == null ? "未录入" : this.grade);
                        let update_btn = $("<td></td>").append($("<button type='button' class='btn btn-success btn-sm updateGradeBtn'>提交</button>"));
                        let tr = $("<tr></tr>");
                        //如果选择了班级，不插入不是本班级的行数据
                        if(stu_ids_of_selected_class.length!=0){
                            if($.inArray(this.courseSelectedId,stu_ids_of_selected_class)==-1){
                                tr = $("<tr></tr>").addClass("hide_this");
                            }
                        }
                        $(tr).append(course_selectedId)
                            .append(course_selectedStu)
                            .append(course_nature)
                            .append(course_status)
                            .append(course_grade)
                            .append(update_btn)
                            .appendTo("#gradesManagementIndex tbody");
                    });
                } else {
                    $("<h3>没有学生选择本门课程</h3>").appendTo("#gradesManagementIndex tbody");
                }
            }
        });
    }

    //成绩修改提交按钮
    $(document).on("click", ".updateGradeBtn", function () {
        let courseStatus = $(this).parent().parent().find("td").eq(3).text();
        let grade = $(this).parent().parent().find("td").eq(4).text();
        if (courseStatus == "已修" && (grade == "未录入" || grade == "")) {
            alert("请录入成绩!");
            return false;
        }
        let courseName = $("#course_ul .active a").text();
        let studentID = $(this).parent().parent().find("td").eq(0).text();
        let updateGradeData = courseName + "-" + studentID + "-" + courseStatus + "-" + grade;
        if(grade == "未录入"){
            updateGradeData = courseName + "-" + studentID + "-" + courseStatus;
        }else if(grade == ""){
            updateGradeData = courseName + "-" + studentID + "-" + courseStatus + "-00";
        }
        console.log(updateGradeData);
        $.ajax({
            url: "${APP_PATH}/updateGrade/" + updateGradeData,
            type: "PUT",
            success: function () {
                let url;
                if(sort_type == "" || sort_type == "id"){
                    url = "course";
                }else if(sort_type == "grade"){
                    url = "sortCourse";
                }
                getCourseList(url,courseName);
            }
        });
    });

    //搜索按钮
    $("#search_form button").click(function (){
        let search_id = $("#search_form input").val();
        //没有选择专业时（获取该学号所有课程）
        if($("#gradesManagementIndex table").hasClass("hide_this")){
            getSearchCourses(search_id);
        }else {//选择了专业时
            $("#search_form input").val("");
            let trs = $("#gradesManagementIndex tbody tr");
            $.each(trs,function (){
                let stu_id = $(this).find("td").eq(0).text();
                if(stu_id != search_id){
                    $(this).addClass("hide_this");
                }
            });
        }
    });

    //获取搜索的课程列表
    function getSearchCourses(search_id){
        $("#search_result").remove();
        $.ajax({
            url: "${APP_PATH}/courses/"+search_id,
            type: "GET",
            success: function (result){
                $("#search_form input").val("");
                if(result.extend.courses.length==0){
                    alert("未查询到该学号的任何课程！");
                    return false;
                }
                let search_stuName = result.extend.courses[0].courseSelectedStu;
                $("#selected_major_and_class span").eq(0).text(search_id);
                $("#selected_major_and_class span").eq(1).text(search_stuName);
                $("#selected_major_and_class").addClass("show");
                let $table = $("<table class='table table-hover' id='search_result'> <thead style='font-size: 13px'> <tr> <th>课程号</th><th>课程名</th> <th>课程性质</th> <th>课程状态(可修改)</th> <th>成绩(可修改)</th> <th>操作</th> </tr> </thead> <tbody style='font-size: 12px'></tbody> </table>");
                $("#gradesManagementIndex div.col-md-9").append($table);
                var courses = result.extend.courses;
                $.each(courses, function (){
                    var course_id = $("<td></td>").append(this.courseId);
                    var course_name = $("<td></td>").append(this.courseName);
                    var course_nature = $("<td></td>").append(this.courseNature);
                    var course_status = $("<td contenteditable='true'></td>").append(this.courseStatus);
                    var course_grade = $("<td contenteditable='true'></td>").append(this.grade == null ? "未录入" : this.grade);
                    let update_btn = $("<td></td>").append($("<button type='button' class='btn btn-success btn-sm search_updateGradeBtn'>提交</button>"));
                    $("<tr></tr>").append(course_id)
                        .append(course_name)
                        .append(course_nature)
                        .append(course_status)
                        .append(course_grade)
                        .append(update_btn)
                        .appendTo("#search_result tbody");
                });
            }
        });
    }

    //搜索出来的成绩修改提交按钮
    $(document).on("click","#search_result .search_updateGradeBtn",function (){
        let courseStatus = $(this).parent().parent().find("td").eq(3).text();
        let grade = $(this).parent().parent().find("td").eq(4).text();
        if (courseStatus == "已修" && (grade == "未录入" || grade == "")) {
            alert("请录入成绩!");
            return false;
        }
        let courseName = $(this).parent().parent().find("td").eq(1).text();
        let studentID = $("#selected_major_and_class span").eq(0).text();
        let updateGradeData = courseName + "-" + studentID + "-" + courseStatus + "-" + grade;
        if(grade == "未录入"){
            updateGradeData = courseName + "-" + studentID + "-" + courseStatus;
        }else if(grade == ""){
            updateGradeData = courseName + "-" + studentID + "-" + courseStatus + "-00";
        }
        console.log(updateGradeData);
        $.ajax({
            url: "${APP_PATH}/updateGrade/" + updateGradeData,
            type: "PUT",
            success: function () {
                getSearchCourses(studentID);
            }
        });
    });

    //按成绩排序按钮
    $("#sort_by_grade").click(function (){
        sort_type = "grade";
        let courseName = $("#course_ul li.active a").text();
        getCourseList("sortCourse",courseName);
    });

    //按学号排序按钮
    $("#sort_by_id").click(function (){
        sort_type = "id";
        let courseName = $("#course_ul li.active a").text();
        getCourseList("course",courseName);
    });

</script>
</body>
</html>
