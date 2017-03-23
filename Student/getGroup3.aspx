<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="getGroup3.aspx.cs" Inherits="Student_getGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
        
        SelectCommand="SELECT s.StuNo, s.StuName, p.groupId, p.groupIdentity FROM tb_student AS s CROSS JOIN tb_personalityTest AS p where s.StuNo=p.StuNo and groupId in (select groupId from tb_personalityTest where StuNo='1610030169') order by groupId,groupIdentity">
    </asp:SqlDataSource>
</asp:Content>

