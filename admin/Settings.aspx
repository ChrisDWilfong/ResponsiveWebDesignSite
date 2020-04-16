<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="admin_Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Women Wrestlers : "></asp:Label><br />
            <asp:TextBox ID="txtWomenWrestlers" runat="server" BackColor="Yellow"></asp:TextBox><br /><br />
            <asp:Button runat="server" ID="cmdSave" Text="Save Changes" Font-Names="Arial" Font-Size="Large" Font-Bold="true" OnClick="cmdSave_Click" /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
