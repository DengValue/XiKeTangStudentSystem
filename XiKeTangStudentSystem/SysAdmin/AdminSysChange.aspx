<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSysChange.aspx.cs" Inherits="XiKeTangStudentSystem.AdminSysChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理员密码修改</title>
    <link rel="icon" href="~/images/school_32px_1182184_easyicon.net.ico" />
    <link href="../css/AdminSysChange.css" rel="stylesheet" />
</head>
<body>
    <!--st logo-->
    <div id="contrainer-logo">
        <div id="contrainer-logo-img">
            <img src="../images/logo%20-%20225-52.png" />
        </div>
        <div id="logo-title">
        </div>
    </div>
    <!--en logo -->
    <div id="contrainer">
        <form id="form1" runat="server">
            <div id="login">
                <!--st login-contrainer-->
                <div id="contrainer-img">
                    <!-- st login-left -->
                    <div id="contrainer-img-left">
                        <img src="../images/login-left.png" />
                    </div>
                    <!-- end login-left-->
                    <div id="contrainer-login">
                        <div id="login-title">
                            <p>管理员权限管理</p>
                            <div id="old-pwd">
                                <div id="old-pwd-ico">
                                    <img src="../images/lock_unlock_24px_563383_easyicon.net.png" />
                                </div>
                                <asp:TextBox ID="txtOldPwd" runat="server" BorderStyle="None" Height="40px" Width="220px" TextMode="Password"></asp:TextBox>
                            </div>
                            <div id="new-pwd">
                                <div id="new-pwd-ico">
                                    <img src="../images/lock_24px_563382_easyicon.net.png" />
                                </div>
                                <asp:TextBox ID="txtNewPwd" runat="server" BorderStyle="None" Height="40px"  Style="margin-left: 0px" Width="220px" TextMode="Password"></asp:TextBox>
                            </div>
                            <div id="submit">
                                <asp:Button ID="btnSubmit" runat="server" BackColor="#039BE5" BorderColor="#039BE5" BorderStyle="None" Font-Names="微软雅黑" Font-Size="14px" ForeColor="#CCFFFF" Height="40px" Text="修改密码" Width="270px" OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="None" ControlToValidate="txtOldPwd" Display="None" ErrorMessage="管理密码不能为空"></asp:RequiredFieldValidator>
                    <asp:Literal ID="ltaMessage" runat="server"></asp:Literal>
                </div>
                <!--ed login-contrainer -->

            </div>
        </form>
    </div>
</body>
</html>
