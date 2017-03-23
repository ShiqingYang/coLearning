<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Student_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        /* 滑动/展开 */
        $("ul.expmenu li > div.header").click(function () {

            var arrow = $(this).find("span.arrow");

            if (arrow.hasClass("up")) {
                arrow.removeClass("up");
                arrow.addClass("down");
            } else if (arrow.hasClass("down")) {
                arrow.removeClass("down");
                arrow.addClass("up");
            }

            $(this).parent().find("ul.menu").slideToggle();

        });
        function js() {
            return document.getElementsByName('can');
        }
        for (var i = 0; i < js().length; i++) {
            js()[i].onclick = function () {
                remove();
                this.className = "current";
            }
        }
        function remove() {
            for (var i = 0; i < js().length; i++) {
                js()[i].className = "past";
            }
        }
    });
    function question() {
        var ifdestory;
        if (window.confirm('你确定要退出系统吗？')) {
            //alert("确定");
            ifdestory = true;
        } else {
            //alert("取消");
            ifdestory = false;
        }
        if (ifdestory) {
            window.location.href = "../Destory.aspx";
        }
    }
</script>
    
    <script type="text/javascript">
    var userid = "<%=Session["ID"].ToString()%>";
        //alert(userid);
        $.ajax({
            type: "post",
            url: "handler/studefault.ashx",
            data: { uid: userid },
            success: function (msg) {

            //alert(msg);
            //var result=yourString.split(",");
            var rs=msg.split(",");
            $('#num').html(rs[1]);
            //alert(rs[0]);
            //alert(rs[1]);
                if (rs[0] == 1) {
                    $('#already').css("display","inline-block");
                    $('.isTest').removeAttr('onclick');
                    $('.isTest').addClass('disabled');

                } else {
                    $('#already').css("display","none");
                }
                if(rs[1]<36){
                    $('.grouprs').addClass("disabled");
                    $('.grouprs').removeAttr('onclick');
                    $('.expmenu_none').css("display","block");
                    $('.expmenu').css("display","none");
                }else{
                    loadGroup();
                    $('.grouprs').removeClass("disabled");
                    $('.expmenu_none').css("display","none");
                    $('.expmenu').css("display","display");
                }
                
            },
            error: function () {
                
            }
        })

        function loadGroup() {
            $.ajax({
                cache: false,  //设置不读取缓存
                type: "get",
                url: "../handler/grouping.ashx",
                success: function (msg) {
                    //1 分数记录成功
                    //alert(msg);
                    if (msg == 1) {
                        //alert(msg);
                        //$("#GroupResult").css("display", "block");
                    }
                    else {
                        //alert(msg);
                        //$("#GroupResult").css("display", "none");
                    }
                },
                error: function () {
                }
            })
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="leftspace">
    协作学习实验平台
    </div>
<div id="realbox">
    <div class="bodybox">
        <div class="col_side">
        	<div class="user_info">
            	<img src="../img/stu.png"/>
                <asp:Label ID="Label" CssClass="user_name" runat="server"></asp:Label>
        	</div>
            <div class="subbtn">
            	<div class="subbtn_icon">
                	<img src="../img/icons/user_icon.png"/>
                </div>
                <div class="subbtn_link">
                	&nbsp;&nbsp;学生：<%=Session["name"].ToString()%> &nbsp; <%=Session["klass"].ToString()%>
                </div>
            </div>
            <div id="menu_list">
            <!--如果没有自动分组-->
            	<ul class="expmenu_none">
					<li><a name="can" class="current"><span><img class="menu_icon" src="../img/icons/index_icon.png"/></span>首页</a></li>
					
					<li><a name="can" class="past" href=""><img class="menu_icon" src="../img/icons/userinfo_icon.png" alt=""/>个人信息</a></li>
                </ul>
                <!--如果自动分组完成-->
                <ul class="expmenu">
                    <li><a name="can" class="current"><span><img class="menu_icon" src="../img/icons/index_icon.png"/></span>首页</a></li>
					<li>
                        <div class="header">
                        <span><a name="can" class="past"><img class="menu_icon" src="../img/icons/task_icon.png"/>自主学习<span class="arrow down"></span></a></span>
                        </div>
                    
                        <ul class="menu"> 
                           	<li><a name="can" class="past" href="Watchvedio2.aspx" target="main">观看教学视频</a></li>
                            <li><a name="can" class="past" href="Selectexam.aspx" target="main">测试训练</a></li>
                        </ul>                    
                    </li>
					<li>
						<div class="header">
							<span><a name="can" class="past"><img class="menu_icon" src="../img/icons/work_icon.png"/>经验值<span class="arrow down"></span></a></span>
                        </div>
                        
                        <ul class="menu"> 
                           	<li><a name="can" class="past" href="" target="main">个人经验值</a></li>
                            <li><a name="can" class="past" href="" target="main">经验值排名</a></li>
                        </ul>
                    </li>
                    
                    <li>
                      	<div class="header">
                            <span><a name="can" class="past"><img class="menu_icon" src="../img/icons/sun_icon.png" alt=""/>协作交流<span class="arrow down"></span></a></span>
                        </div>
                            
                      	<ul class="menu">
                            <li><a name="can" class="past" href="" target="main">讨论区</a></li>
                            <li><a name="can" class="past" href="" target="main">实时聊天</a></li>
                            <li><a name="can" class="past" href="" target="main">作品展示</a></li>
                        </ul>
                    </li>
					<li><a name="can" class="past" href=""><img class="menu_icon" src="../img/icons/userinfo_icon.png" alt=""/>个人信息</a></li>
                </ul>
                <div id="logout">
                    <span id = "question" onmouseover="this.style.cursor='pointer'" onclick = "question()"><a>安全退出</a></span>
                </div>
            </div>
        </div>
        <div class="col_main">
        <div id="defaultmain">
    <div class="firstLog">
        <button  class="btn btn-success btn-large isTest"  onclick="location='../questionnaire.html'" type="button">点击填写学习风格测试问卷</button><span id="already">*您已填写</span>
    </div>
    <div class="notfirstLog">
    <h4>已有&nbsp;&nbsp;<span id="num"></span>&nbsp;&nbsp;个同学填写问卷</h4>
    </div>
    <div class="groupstatus">
        <button class="btn btn-large grouprs"  onclick="location='getGroup.aspx'" type="button">查看按学习风格分组结果</button><br />
        <br />
        <button class="btn btn-large groupbygrade"  onclick="location='getGroup.aspx'" type="button">查看按成绩分组结果</button>
    </div>
        </div>
        </div>
        <div class="footbox">
    	<p>&copy <a href="http://www.tjnu.edu.cn">天津师范大学</a> <span style="color:#fff;">教育技术学</span></p>
    </div>
    </div>

    </div>
    </form>
</body>
</html>
