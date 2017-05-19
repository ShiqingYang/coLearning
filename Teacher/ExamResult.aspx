<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="Teacher_ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/hc/highcharts.js" type="text/javascript"></script>   
    <script src="../js/hc/exporting.js" type="text/javascript"></script>
    <script src="../js/hc/data.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                //ajax查询4次考试的平均成绩
                type: "post",
                url: "../handler/getavgscore.ashx",
                success: function (msg) {
                    if (msg) {
                        var rs = msg.split(",");

                        $('#label1').html(rs[1]);
                        $('#label2').html(rs[2]);
                        var w1 = $('#label1').text();
                        $('#rect1').width(w1 * 6);
                        var w2 = $('#label2').text();
                        $('#rect2').width(w2 * 6);
                        
                    }
                },
                error: function () {

                }
            })
        });
    
    </script>
    <style type="text/css">
        #ContentPlaceHolder1_GridView1,#ContentPlaceHolder1_GridView2
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
    </asp:DropDownList>&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
        Text="查询" Width="80px" />
    <br />
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
    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto">
    </div>
    <br /><br />
    <asp:Label ID="Label4" runat="server" Text="按姓名查询：" Font-Bold="True"></asp:Label> 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> &nbsp;&nbsp;  
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="查询" 
        Height="35px" Width="80px" />
    
    <br /><br />
    <asp:GridView ID="GridView2" runat="server" Height="329px" Width="500px" 
        AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField />
            <asp:BoundField DataField="score1" HeaderText="第1次" />
            <asp:BoundField DataField="score2" HeaderText="第2次" />
            <asp:BoundField DataField="score3" HeaderText="第3次" />
            <asp:BoundField DataField="score4" HeaderText="第4次" />
        </Columns>
    </asp:GridView>
    <br />
    <br />

<div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">

            window.onload = function () {
            
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
                        data: {
                            table: 'ContentPlaceHolder1_GridView2'
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
            };
</script>
<script type="text/javascript">

</script>
</asp:Content>

