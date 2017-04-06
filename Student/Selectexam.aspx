<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="Selectexam.aspx.cs" Inherits="Student_Selectexam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
$(function () {
        $("input").addClass("btn btn-success");  
})

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
<h2>请选择测试章节：</h2>
<br/>
<table>
<tr> <td>
    <asp:DropDownList ID="ddlkm" runat="server" DataSourceID="SqlDataSource1" 
           DataTextField="examName" DataValueField="examName" Height="30px" 
           Width="300px">
       </asp:DropDownList></td><td style=" width:40px"></td>
       <td>  
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="开始测试" /></td>
      </tr>
      </table>
      
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
           SelectCommand="SELECT [examName] FROM [tb_exam]"></asp:SqlDataSource>
     
</asp:Content>

