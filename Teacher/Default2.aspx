<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Teacher_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/hc/highcharts.js" type="text/javascript"></script>   
    <script src="../js/hc/exporting.js" type="text/javascript"></script>
    <script src="../js/hc/data.js" type="text/javascript"></script>
    <style>
        #ContentPlaceHolder1_GridView1
        {
            display:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="avg" style="display:none;"></div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StuName" DataSourceID="SqlDataSource1" Width="327px">
        <Columns>
            <asp:BoundField DataField="StuName" ReadOnly="True" 
                SortExpression="StuName" />
            <asp:BoundField DataField="score1" HeaderText="score1" 
                SortExpression="score1" />
            <asp:BoundField DataField="score2" HeaderText="score2" 
                SortExpression="score2" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coLearningConnectionString %>" 
        SelectCommand="SELECT s.StuName, g.score1, g.score2 FROM [tb_student] as s,[tb_grade] as g where s.StuNo=g.StuNo">
    </asp:SqlDataSource>
    <script type="text/javascript">
        $(function () {
            $('#container').highcharts({
                data: {
                    table: 'ContentPlaceHolder1_GridView1'
                },
                chart: {
                    type: 'column'
                },
                title: {
                    text: '从 HTML 表格中提取数据并生成图表'
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
                    this.point.name.toLowerCase()+this.point.y + ' 分' ;
                    }
                }
            });
        });
</script>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</asp:Content>

