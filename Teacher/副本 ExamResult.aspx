<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="副本 ExamResult.aspx.cs" Inherits="Teacher_ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/hc/highcharts.js" type="text/javascript"></script>   
    <script src="../js/hc/exporting.js" type="text/javascript"></script>
    <script src="../js/hc/data.js" type="text/javascript"></script>
    <style type="text/css">
        #ContentPlaceHolder1_GridView1,#ContentPlaceHolder1_Label5,#ContentPlaceHolder1_Label6,#ContentPlaceHolder1_Label7,#ContentPlaceHolder1_Label8,#ContentPlaceHolder1_lblCount,#ContentPlaceHolder1_is1
        {
            display:none;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
        Text="查看全班成绩"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="请选择班级："></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="90px">
        <asp:ListItem>1504班</asp:ListItem>
        <asp:ListItem>1505班</asp:ListItem>
        <asp:ListItem>1604班</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="请选择组别："></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="90px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem Selected="True">所有</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="按姓名查询："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="151px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
        Text="查询" Width="80px" />
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="is1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="411px" 
        PageSize="23" Width="488px">
        <Columns>
            <asp:BoundField DataField="StuName">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="score1" HeaderText="第1次">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="score2" HeaderText="第2次">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            
            <asp:BoundField DataField="score3" HeaderText="第3次" />
            <asp:BoundField DataField="score4" HeaderText="第4次" />
            
        </Columns>
    </asp:GridView>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">

            window.onload = function () {
                alert($('#ContentPlaceHolder1_Label5').val());
                $('#container').highcharts({
                    data: {
                        table: 'ContentPlaceHolder1_GridView1'
                    },
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: '成绩柱状图'
                    },
                    yAxis: {
                        allowDecimals: false,
                        title: {
                            text: '分',
                            rotation: 0
                        }
                    },
                    tooltip: {
                        formatter: function () {
                            return '<b>' + this.series.name + '</b><br/>' +
                    this.point.name.toLowerCase() + this.point.y + ' 分';
                        }
                    }
                });

                $('#container2').highcharts({
                    title: {
                        text: '学生成绩与平均成绩比较'
                    },
                    xAxis: {
                        categories: ['第1次', '第2次', '第3次', '第4次']
                    },
                    plotOptions: {
                        series: {
                            stacking: 'normal'
                        }
                    },
                    series: [{
                        type: 'column',
                        name: '毕生锐',
                        data: [25, 100, 45, 55]
                    },
                    {
                        type: 'line',
                        name: '平均值',
                        data: [47, 77, 61, 60],
                        marker: {
                            lineWidth: 2,
                            lineColor: Highcharts.getOptions().colors[3],
                            fillColor: 'white'
                        }
                    }]
                });
            };
</script>
<script type="text/javascript">

</script>
<!--
<input type="button" id="show1" value='显示第1次测验平均成绩' />

<input type="button" onclick="" value='显示第2次测验平均成绩' />
<input type="button" onclick="" value='显示第3次测验平均成绩' />
<input type="button" onclick="" value='显示第4次测验平均成绩' />-->
</asp:Content>

