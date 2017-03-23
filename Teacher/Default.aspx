<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Teacher_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    //var userid = "<%=Session["ID"].ToString()%>";
        //alert(userid);
        $.ajax({
            type: "post",
            url: "handler/teacherdefault.ashx",
            data: {},
            success: function (tc) {
                //alert(tc);
                $("#num").html(tc);
                if (tc != 36) {

                    $('.grouprs').addClass("disabled");
                    $('.grouprs').removeAttr('onclick');
                } else {
                    loadGroup();
                    $('.grouprs').removeClass("disabled");
                }

            },
            error: function () {

            }
        })

        //分组
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
    <div class="notfirstLog">
    <h4>已有&nbsp;&nbsp;<span id="num"></span>&nbsp;&nbsp;个同学填写问卷</h4>
    </div>
    <div class="groupstatus">
        <button class="btn btn-large grouprs"  onclick="location='getGroup.aspx'" type="button">查看分组结果</button>
    </div>
        </div>
</asp:Content>

