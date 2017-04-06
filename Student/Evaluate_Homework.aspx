<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="Evaluate_Homework.aspx.cs" Inherits="Student_Evaluate_Homework" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Size="Medium" 
        ForeColor="#333333" GridLines="None" Height="290px" Width="807px" 
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
            <asp:BoundField DataField="ChapTitle" HeaderText="章节标题" 
                SortExpression="ChapTitle" />
            <asp:BoundField DataField="HomeContent" HeaderText="作业内容" 
                SortExpression="HomeContent" />
            <asp:BoundField DataField="HomeScore" HeaderText="分数" 
                SortExpression="HomeScore" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="Black" 
        Height="126px" Width="805px">
        <Fields>
            <asp:BoundField DataField="ChapTitle" HeaderText="ChapTitle" 
                SortExpression="ChapTitle" />
            <asp:BoundField DataField="HomeContent" HeaderText="HomeContent" 
                SortExpression="HomeContent" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        DeleteCommand="DELETE FROM [tb_homework] WHERE [ID] = @original_ID AND (([StuNo] = @original_StuNo) OR ([StuNo] IS NULL AND @original_StuNo IS NULL)) AND (([ChapTitle] = @original_ChapTitle) OR ([ChapTitle] IS NULL AND @original_ChapTitle IS NULL)) AND (([HomeContent] = @original_HomeContent) OR ([HomeContent] IS NULL AND @original_HomeContent IS NULL)) AND (([HomeScore] = @original_HomeScore) OR ([HomeScore] IS NULL AND @original_HomeScore IS NULL)) AND (([SubTime] = @original_SubTime) OR ([SubTime] IS NULL AND @original_SubTime IS NULL))" 
        InsertCommand="INSERT INTO [tb_homework] ([StuNo], [ChapTitle], [HomeContent], [HomeScore], [SubTime]) VALUES (@StuNo, @ChapTitle, @HomeContent, @HomeScore, @SubTime)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tb_homework] WHERE ([ID] = @ID)" 
        UpdateCommand="UPDATE [tb_homework] SET [StuNo] = @StuNo, [ChapTitle] = @ChapTitle, [HomeContent] = @HomeContent, [HomeScore] = @HomeScore, [SubTime] = @SubTime WHERE [ID] = @original_ID AND (([StuNo] = @original_StuNo) OR ([StuNo] IS NULL AND @original_StuNo IS NULL)) AND (([ChapTitle] = @original_ChapTitle) OR ([ChapTitle] IS NULL AND @original_ChapTitle IS NULL)) AND (([HomeContent] = @original_HomeContent) OR ([HomeContent] IS NULL AND @original_HomeContent IS NULL)) AND (([HomeScore] = @original_HomeScore) OR ([HomeScore] IS NULL AND @original_HomeScore IS NULL)) AND (([SubTime] = @original_SubTime) OR ([SubTime] IS NULL AND @original_SubTime IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_StuNo" Type="String" />
            <asp:Parameter Name="original_ChapTitle" Type="String" />
            <asp:Parameter Name="original_HomeContent" Type="String" />
            <asp:Parameter Name="original_HomeScore" Type="Int32" />
            <asp:Parameter Name="original_SubTime" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StuNo" Type="String" />
            <asp:Parameter Name="ChapTitle" Type="String" />
            <asp:Parameter Name="HomeContent" Type="String" />
            <asp:Parameter Name="HomeScore" Type="Int32" />
            <asp:Parameter Name="SubTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="StuNo" Type="String" />
            <asp:Parameter Name="ChapTitle" Type="String" />
            <asp:Parameter Name="HomeContent" Type="String" />
            <asp:Parameter Name="HomeScore" Type="Int32" />
            <asp:Parameter Name="SubTime" Type="DateTime" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_StuNo" Type="String" />
            <asp:Parameter Name="original_ChapTitle" Type="String" />
            <asp:Parameter Name="original_HomeContent" Type="String" />
            <asp:Parameter Name="original_HomeScore" Type="Int32" />
            <asp:Parameter Name="original_SubTime" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
    请输入评分成绩:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" 
        Height="30px" Width="100px" />
    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        DeleteCommand="DELETE FROM [tb_homework] WHERE [ID] = @original_ID AND (([StuNo] = @original_StuNo) OR ([StuNo] IS NULL AND @original_StuNo IS NULL)) AND (([ChapTitle] = @original_ChapTitle) OR ([ChapTitle] IS NULL AND @original_ChapTitle IS NULL)) AND (([HomeContent] = @original_HomeContent) OR ([HomeContent] IS NULL AND @original_HomeContent IS NULL)) AND (([HomeScore] = @original_HomeScore) OR ([HomeScore] IS NULL AND @original_HomeScore IS NULL)) AND (([SubTime] = @original_SubTime) OR ([SubTime] IS NULL AND @original_SubTime IS NULL))" 
        InsertCommand="INSERT INTO [tb_homework] ([StuNo], [ChapTitle], [HomeContent], [HomeScore], [SubTime]) VALUES (@StuNo, @ChapTitle, @HomeContent, @HomeScore, @SubTime)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tb_homework] WHERE ([StuNo] &lt;&gt; @StuNo)" 
        UpdateCommand="UPDATE [tb_homework] SET [StuNo] = @StuNo, [ChapTitle] = @ChapTitle, [HomeContent] = @HomeContent, [HomeScore] = @HomeScore, [SubTime] = @SubTime WHERE [ID] = @original_ID AND (([StuNo] = @original_StuNo) OR ([StuNo] IS NULL AND @original_StuNo IS NULL)) AND (([ChapTitle] = @original_ChapTitle) OR ([ChapTitle] IS NULL AND @original_ChapTitle IS NULL)) AND (([HomeContent] = @original_HomeContent) OR ([HomeContent] IS NULL AND @original_HomeContent IS NULL)) AND (([HomeScore] = @original_HomeScore) OR ([HomeScore] IS NULL AND @original_HomeScore IS NULL)) AND (([SubTime] = @original_SubTime) OR ([SubTime] IS NULL AND @original_SubTime IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_StuNo" Type="String" />
            <asp:Parameter Name="original_ChapTitle" Type="String" />
            <asp:Parameter Name="original_HomeContent" Type="String" />
            <asp:Parameter Name="original_HomeScore" Type="Int32" />
            <asp:Parameter Name="original_SubTime" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StuNo" Type="String" />
            <asp:Parameter Name="ChapTitle" Type="String" />
            <asp:Parameter Name="HomeContent" Type="String" />
            <asp:Parameter Name="HomeScore" Type="Int32" />
            <asp:Parameter Name="SubTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="StuNo" SessionField="ID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="StuNo" Type="String" />
            <asp:Parameter Name="ChapTitle" Type="String" />
            <asp:Parameter Name="HomeContent" Type="String" />
            <asp:Parameter Name="HomeScore" Type="Int32" />
            <asp:Parameter Name="SubTime" Type="DateTime" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_StuNo" Type="String" />
            <asp:Parameter Name="original_ChapTitle" Type="String" />
            <asp:Parameter Name="original_HomeContent" Type="String" />
            <asp:Parameter Name="original_HomeScore" Type="Int32" />
            <asp:Parameter Name="original_SubTime" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

