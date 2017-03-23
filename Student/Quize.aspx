<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="Quize.aspx.cs" Inherits="Student_Quize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div > <asp:Panel ID="Panel1" runat="server">
        
    </asp:Panel></div>
    <div style="text-align:center"><asp:Button ID="Button1" runat="server" Text="提交" 
            onclick="Button1_Click" Height="30px" Width="80px" />
        &nbsp;</div>
   
</asp:Content>

