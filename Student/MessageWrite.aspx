<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageWrite.aspx.cs" Inherits="Student_MessageWrite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 100; left:40px;
            position: absolute; top: 20px; height: 266px;" Width="632px">
            <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 32px; position: absolute;
                top: 24px" Text=""></asp:Label>&nbsp;<asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 24px; position: absolute;
                top: 112px" Text="内容："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="150px" Style="z-index: 105; left: 72px;
                position: absolute; top: 56px" TextMode="MultiLine" Width="536px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 107;
                left: 288px; position: absolute; top: 224px" Text="提交留言" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
