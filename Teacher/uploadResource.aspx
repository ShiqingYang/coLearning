<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/teacher.master" AutoEventWireup="true" CodeFile="uploadResource.aspx.cs" Inherits="Teacher_uploadResource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    function checkform() {
        var strs = document.getElementById("FileUpload1").value;
        if (strs == "") {
            alert("请选择要上传的图片!");
            return false;
        }

        var n1 = strs.lastIndexOf('.') + 1;
        var fileExt = strs.substring(n1, n1 + 3).toLowerCase()
        if (fileExt != "jpg" && fileExt != "bmp" && fileExt != "png" && fileExt != "zip" && fileExt != "doc" && fileExt != "docx" && fileExt != "xls" && fileExt != "xlsx" && fileExt != "ppt" && fileExt != "pptx" && fileExt != "avi" && fileExt != "mp4" && fileExt != "mov" && fileExt != "mpeg" && fileExt != "mp3" && fileExt != "rar") {
            alert('目前系统仅支持jpg、bmp、png、zip后缀图片上传!');
            return false;
        }

    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              <div class="main_hd"><h4>上传资源</h4></div>
        <div>
            <div>标题：</div>
            <div><asp:TextBox ID="sworktitle" runat="server" Height="30px"></asp:TextBox></div>
        </div>
        <div>
            <div>内容</div>
            <div> 
                <asp:TextBox ID="sworkcontent" runat="server" Height="200px" TextMode="MultiLine" 
            Width="60%"></asp:TextBox></div>
        </div>
        <div>
             <div>附件：</div>
             <div><asp:FileUpload ID="FileUpload1" runat="server" /></div>
        </div>
        <div>
             <div>
                 <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" 
                     Height="30px" Width="100px" />
             </div>
        </div>
</asp:Content>

