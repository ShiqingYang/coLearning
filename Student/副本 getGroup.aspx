<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="副本 getGroup.aspx.cs" Inherits="Student_getGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/tablecloth.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/tablecloth.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function(){
    var userid = "<%=Session["ID"].ToString()%>";
    //alert(userid);
        $.ajax({
            type: "post",
            url: "handler/getuserbygroup.ashx",
            data: { uid: userid },
            success: function (array) {
                if (array && array.length > 0) {
                    var obj=eval(array);
                        var $table=$(".tb1");
                        for(var i=0;i<array.length-1;i++)
                        {
                            var $tr1=$("<tr></tr>");
                            $table.append($tr1);
                            var $td1=$("<td></td>");
                            var $td2=$("<td></td>");
                            var $td3=$("<td></td>");
                            var uname = obj[i].Username;
                            var GroupId=obj[i].GroupId;
                            var GroupIdentity=obj[i].GroupIdentity;
                            $td1.html(GroupId);
                            $td2.html(GroupIdentity);
                            $td3.html(uname);
                            

                            $tr1.append($td1);
                            $tr1.append($td2);
                            $tr1.append($td3);

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
    <div id="content">
    <table class="tb1">
    <tr>
        <th>小组编号</th>
        <th>组内身份</th>
        <th>成员</th>
    </tr>
    </table>
    </div>
</asp:Content>