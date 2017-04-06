<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="publishTask.aspx.cs" Inherits="Teacher_publishTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main_hd"><h2>发布任务</h2></div>
        <div class="main_bd">
        <p>发布任务</p>
        <form id="form1" runat="server">
            <div>课程：
                <asp:DropDownList ID="cnameList" runat="server" OnSelectedIndexChanged="cnameList_SelectedIndexChanged" AutoPostBack="True" CssClass="add_input">
                    <asp:ListItem>C语言程序设计</asp:ListItem>
                    <asp:ListItem>网络数据库应用</asp:ListItem>
                </asp:DropDownList>
                班级：
                <asp:DropDownList ID="classname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="classname_SelectedIndexChanged" CssClass="add_input">
                    <asp:ListItem>1504班</asp:ListItem>
                    <asp:ListItem Value="1505">1505班</asp:ListItem>
                    <asp:ListItem Value="1604">1604班</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="num" runat="server" CssClass="add_input">
                </asp:Label>
            </div>
            <div>标题：
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="351px" CssClass="add_input">
                </asp:TextBox>
            </div>
            <div>任务内容：
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="211px" Width="469px" CssClass="add_input">
                </asp:TextBox>
            </div>
            
            <div>                
                最后上交期限：
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="156px" CssClass="add_input">
                </asp:TextBox>
                <asp:Button ID="date1" runat="server" OnClick="date1_Click" Text="..." />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" 
                BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                ForeColor="#003399" Height="150px" Width="300px" ShowGridLines="true" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>
                 
            </div>
            
            添加附件：
            <div id="atta">            
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" Height="23px"/>                
            </div>
            <div>
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="发布" 
                    CssClass="add_btn yes" Height="30px" Width="100px"/>
                <asp:Button ID="Reset" runat="server" Text="取消" OnClick="Reset_Click" 
                    CssClass="add_btn or" Height="30px" Width="100px" />
            </div>
        </form>
        </div>
</asp:Content>

