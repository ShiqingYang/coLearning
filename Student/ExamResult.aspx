<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="Student_ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        测试结果
        <table width="200px" border="1"><tr><td>测试章节</td><td>测试成绩</td></tr>
        <tr><td> <asp:Label ID="lblkm" runat="server" ></asp:Label></td><td><asp:Label ID="lblResult" runat="server"></asp:Label></td></tr>
        </table>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [Quize_score] FROM [tb_expnum]"></asp:SqlDataSource>
</asp:Content>

