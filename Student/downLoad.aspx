<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="downLoad.aspx.cs" Inherits="Student_downLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="rcontent" HeaderText="rcontent" 
                SortExpression="rcontent" />
            <asp:BoundField DataField="attachment" HeaderText="attachment" 
                SortExpression="attachment" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="下载" 
                ShowHeader="True" Text="下载" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        SelectCommand="SELECT [title], [rcontent], [attachment] FROM [tb_resource] WHERE ([flag] = @flag)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="flag" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

