<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="getGroupbyPer.aspx.cs" Inherits="Student_getGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function(){
    var userid = "<%=Session["ID"].ToString()%>";
    var username = "<%=Session["name"].ToString()%>";
    var klass="<%=Session["klass"].ToString()%>";
    //alert(userid);
        $.ajax({
            type: "post",
            url: "handler/getgroupbyper.ashx",
            data:{uid:userid},
            success: function (msg) {
                if (msg) {
                //alert(msg);
                var rs=msg.split(",");
                var $ul=$("#partner");
                $("#stuname").html(username);
                $("#groupid").html(rs[0]);
                if(rs[1]==username)
                {
                    $("#leader").html('您');
                }
                else
                {
                    $("#leader").html(rs[1]);
                }
                }
            },
            error: function () {

            }
        })

        $.ajax({
            type: "post",
            url: "handler/getpartner.ashx",
            data:{uid:userid},
            success: function (msg) {
                if (msg) {
                //alert(msg);                
                var obj=eval(msg);
                //alert(obj);
                for(var i=0;i<obj.length;i++)
                {
                    var $ul=$("#partner");
                    var $li=$("<li></li>");
                    var uname = obj[i].Username;
                    $li.html(uname);
                    $ul.append($li);
                }
                }
            },
            error: function () {

            }
        })
    });
    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="group_container">
    <span id="stuname"></span>&nbsp;同学你好，根据学习风格分组，<br />
    你所在的小组为第&nbsp;<span id="groupid"></span>&nbsp;小组，<br />
    组长是&nbsp;<span id="leader"></span>&nbsp;，<br />
    和你一起学习的小伙伴有&nbsp;<ul id="partner"></ul>
    </div>
</asp:Content>