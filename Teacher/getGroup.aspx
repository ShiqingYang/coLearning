<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="getGroup.aspx.cs" Inherits="Teacher_getGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/tablecloth.css" rel="stylesheet" type="text/css" />
    <script src="../js/tablecloth.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StuNo" DataSourceID="SqlDataGroup1" 
        style="margin-right: 73px" Width="600px">
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="小组编号" SortExpression="groupId" >
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            </asp:BoundField>
            <asp:BoundField DataField="StuName" HeaderText="姓名" 
                SortExpression="StuName" >
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="组内身份" 
                SortExpression="groupIdentity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataGroup1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        
        SelectCommand="SELECT s.StuNo, s.StuName, p.groupId, p.groupIdentity FROM tb_student AS s CROSS JOIN tb_personalityTest AS p where s.klass='1504班' and s.StuNo=p.StuNo order by groupId,groupIdentity">
    </asp:SqlDataSource>
</asp:Content>

