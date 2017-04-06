<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Student_Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv ="refresh"content ="10"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


    <table id ="table1"  cellspacing ="0" cellpadding ="0" style ="width:700px" border ="2" align="center" >
<tr>
<td align ="center">
    聊天室</td>
</tr>
<tr>
<td><iframe src ="MessageWrite.aspx" width ="100%" height ="300px"></iframe>
</td>
</tr>
<tr>
<td><iframe src ="MessageList.aspx" width ="100%"></iframe>
</td>
</tr>
</table>

</asp:Content>

