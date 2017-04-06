<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="Student_vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    label
    {
        display:none;
    }
    .vote
    {
        padding:100px 100px 0 200px;
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
</style>
<script>
    function getvote() {
        $.ajax({
            type: "get",
            url: "handler/getvote.ashx",
            success: function (msg) {
                var rs = msg.split(",");
                $('#label1').html(rs[1]);
                $('#label2').html(rs[2]);
                if (rs[0] == 1) {
                    $('#already').css("display", "inline-block");
                    $('.isvote').removeAttr('onclick');
                    $('.isvote').addClass('disabled');

                } else {
                    $('#already').css("display", "none");
                }
            },
            error: function () {

            }
        })
    }
</script>
<script type="text/javascript">
    getvote();
    function vote() {    //函数vote，当点击确认投票的时候，调用vote方法

        var value = $('input:radio:checked').val();
        $.ajax({

            type: "post",
            url: "handler/vote.ashx",
            data: { value: value },
            success: function (msg) {
                //alert(msg);
                if (msg == 1) {
                    alert("投票成功!");
                    window.location = "Default.aspx";
                }
                else {

                }
            },
            error: function () {
            }
        })
        getvote();
    }


    
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="vote">  
    <h4>分组依据投票（请为您更喜欢的分组依据投票）</h4> 
        <div>
        <input type="radio" name="option" checked="checked" value='1'/>&nbsp;&nbsp;按气质类型分组
        </div> 
        <div>
        <input type="radio" name="option" value='2' />&nbsp;&nbsp;按成绩分组
        </div>
        <input type="button" class="btn btn-success isvote" style="width:100px; height:40px;" value="确认投票" onclick="vote()"/> <span id="already">*您已投过票了</span>
        <label id="label1"></label>
        <label id="label2"></label>
    </div>   

</asp:Content>

