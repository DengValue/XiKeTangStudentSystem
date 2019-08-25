<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="XiKeTangStudentSystem.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>喜课堂学员管理系统</title>
    <!--设置网页图标的方法使用Link标签-->
    <link rel="icon" href="~/images/school_32px_1182184_easyicon.net.ico" />
</head>
<body>
    <form id="form1" runat="server">
       
        <div> 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="kkkkkkkkk" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

        </div>
        <p>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
