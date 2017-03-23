<%@ Page Language="C#" AutoEventWireup="true" CodeFile="group.aspx.cs" Inherits="Webapp_group" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            background:#eee;
        }
        #title
        {
            width:100%;
            height:40px;
            margin-top:50px;
            background:#507cd1;
            color:#fff;
            font-weight:bold;
            text-align:center;
            line-height:40px;
            font-size:20px;
        }
        #GroupResult
        {
            width:900px;
            margin:50px auto;
            display:none;
            height:800px;
        }
        .group1,.group3,.group5
        {
            float:left;
            width:400px;
            height:250px;
        }
        .group2,.group4,.group6
        {
            float:right;
            width:400px;
            height:250px;
        }
        #form1
        {
            height: 470px;
        }
    </style>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            // $("#GroupResult").text("正在加载分组...");

            loadGroup();
        })
        function loadGroup() {
            $.ajax({
                cache: false,  //设置不读取缓存
                type: "get",
                url: "handler/grouping.ashx",
                success: function (msg) {
                    //1 分数记录成功
                    //alert(msg);
                    if (msg == 1) {
                        //alert(msg);
                        $("#GroupResult").css("display", "block");
                    }
                    else {
                        //alert(msg);
                        $("#GroupResult").css("display", "none");
                    }
                },
                error: function () {
                }
            })
        }
    </script>
</head>
<body>
    <div id="title">
    分组结果
    </div>
    <form id="form1" runat="server">
    <div id="GroupResult">   
    <div class="group1">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StuNo" DataSourceID="SqlDataGroup1" 
        style="margin-right: 73px" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataGroup1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="groupId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    <div class="group2">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="StuNo" DataSourceID="SqlDataGroup2" 
            ForeColor="#333333" GridLines="None" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataGroup2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="groupId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="StuNo" DataSourceID="SqlDataGroup3" 
            ForeColor="#333333" GridLines="None" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataGroup3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="groupId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    <div class="group4">
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="StuNo" DataSourceID="SqlDataGroup4" 
            ForeColor="Black" GridLines="Vertical" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataGroup4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="groupId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="group5">
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="StuNo" DataSourceID="SqlDataGroup5" 
            ForeColor="#333333" GridLines="None" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataGroup5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="groupId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="group6">
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="StuNo" DataSourceID="SqlDataGroup6" 
            ForeColor="#333333" GridLines="None" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="groupId" HeaderText="组别" SortExpression="groupId" ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="StuNo" ItemStyle-HorizontalAlign="Center">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="groupIdentity" HeaderText="身份" 
                SortExpression="groupIdentity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataGroup6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
            SelectCommand="SELECT [groupId], [StuNo], [groupIdentity] FROM [tb_personalityTest] WHERE ([groupId] = @groupId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="6" Name="groupId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
