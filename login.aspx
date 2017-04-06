<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //点击验证码图片，切换验证码
            $("#imgCode").click(function () {
                changeCode();
            })
            $("#txtCode").attr("autocomplete","off");
        })
        function changeCode() {
            $("#imgCode").attr("src", "ValidateCode.ashx?_=" + Math.random())
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand span3" href="">协作学习实验平台</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="">
                <a href="">首页</a>
              </li>
              <li class="active">
                <a href="">登录</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    </div>
    <div class="toppic">
    <img src="img/logtop.png" alt="Alternate Text" />
    </div>    
    <div class="login">
        <span class="span1">用户名：</span><asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
        <br />
        <span class="span1">密&nbsp;&nbsp;&nbsp;码：</span><asp:TextBox ID="txtPwd" 
            runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <span class="span1">身&nbsp;&nbsp;&nbsp;份：</span><asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>学生</asp:ListItem>
            <asp:ListItem>教师</asp:ListItem>
            <asp:ListItem>管理员</asp:ListItem>
        </asp:DropDownList>
        <br />
        <span class="span1">验证码：</span><asp:TextBox ID="txtCode" runat="server" 
            AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <span class="span1"> </span><img id="imgCode" alt="验证码" src="ValidateCode.ashx" title="看不清？" style="cursor:pointer"  />
        <br />
        <br />
        <span style="margin-left:80px;"> </span><asp:Button ID="btnLogin" runat="server" Text="登 录" 
            onclick="btnLogin_Click" BackColor="#FFCC00" BorderStyle="None" 
            Font-Bold="False" Font-Size="15pt" ForeColor="#333333" Height="35px" 
            Width="200px" />
    </div>
    </form>
</body>
</html>
