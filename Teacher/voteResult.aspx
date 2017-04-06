<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="voteResult.aspx.cs" Inherits="Teacher_voteResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
    .vote
    {
        padding:100px 100px 0 100px;
    }
    #already
    {
        color:Red;
    }
    .vote div,h4
    {
        font-size:16px;
        height:50px;
    }
    .type1
    {
        height:50px;
        line-height:50px;
    }
    #rect1
    {
        
        height:30px;
        background:#8ccf4a;
        display:inline-block;
        margin:0 100px 0 100px;
    }
    #rect2
    {
        
        height:30px;
        background:#e5b14c;
        display:inline-block;
        margin:0 100px 0 100px;
    }
</style>
<script>
    $.ajax({
        type: "get",
        url: "handler/getvote.ashx",
        success: function (msg) {
            var rs = msg.split(",");
            $('#label1').html(rs[1]);
            $('#label2').html(rs[2]);
            var w1 = $('#label1').text();
            $('#rect1').width(w1 * 6);
            var w2 = $('#label2').text();
            $('#rect2').width(w2 * 6);
        },
        error: function () {

        }
    })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="vote">  
    <h4>分组依据投票结果</h4> 
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="50">
                按气质类型分组
                </td>
                <td width="300">
                <span id="rect1"></span>
                </td>
                <td><label id="label1"></label>票</td>
            </tr>
            <tr>
                <td height="50">
                按成绩分组
                </td>
                <td>
                <span id="rect2"></span>
                </td>
                <td><label id="label2"></label>票</td>
            </tr>
        </table>
        
        
    </div>   

</asp:Content>

