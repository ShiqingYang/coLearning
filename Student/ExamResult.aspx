<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="Student_ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/tablecloth.css" rel="stylesheet" type="text/css" />
    <script src="../js/tablecloth.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        </br><h2>测试结果</h2></br>
        <table width="200px" border="1"><tr><td class="style1">测试章节</td><td class="style1">测试成绩</td></tr>
        <tr><td> <asp:Label ID="lblkm" runat="server" ></asp:Label></td><td><asp:Label ID="lblResult" runat="server"></asp:Label></td></tr>
        </table>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [Quize_score] FROM [tb_expnum]"></asp:SqlDataSource>
</asp:Content>

