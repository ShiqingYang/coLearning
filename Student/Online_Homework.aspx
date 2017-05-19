<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="Online_Homework.aspx.cs" Inherits="Student_Online_Homework" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        SelectCommand="SELECT DISTINCT [videotitle] FROM [tb_tvideo]">
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div style=" text-align:center">选择章节：&nbsp;&nbsp;&nbsp; 
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="videotitle" 
        DataValueField="videotitle">
    </asp:DropDownList></div>

 
    <div style=" text-align:center"><asp:TextBox ID="TextBox1" runat="server" 
            Height="317px" Width="552px" TextMode="MultiLine"></asp:TextBox></div>
    
<div  style=" text-align:center"> <asp:Button ID="Button1" runat="server" 
        onclick="Button1_Click" Text="提交" Height="29px" Width="58px" />
    &nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" 
        Height="29px" Width="58px" /></div>
   

</asp:Content>

