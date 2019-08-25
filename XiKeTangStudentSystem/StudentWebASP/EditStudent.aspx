<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="XiKeTangStudentSystem.EditStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/AddStudent.css" rel="stylesheet" />
    <script type="text/javascript" src="../Js/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="../Js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#recode").click(function () {
                $("#imgCode").attr("src", function () {
                    return "../Handler/CommonValidationCode.ashx?a=" + new Date().getMilliseconds();
                });
            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 151px;
        }

        .auto-style2 {
            width: 263px;
        }

        .auto-style3 {
            width: 768px;
        }
        .txt-auto {
            float:left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 960px">
        <table class="student-info-table" style="display: block; float: left">
            <caption>&nbsp; 第一步修改学员基本信息>></caption>
            <tr>
                <td>学员学员号：</td>
                <td>
                    <asp:Literal ID="latStudentId" runat="server"></asp:Literal>
                </td>
                <td class="auto-style2"></td>

            </tr>
            <tr>
                <td>学员姓名：</td>
                <td>
                    <asp:TextBox ID="txtNmae" runat="server"></asp:TextBox></td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入学员的姓名！" Font-Names="微软雅黑" ForeColor="#FF3300" ControlToValidate="txtNmae"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">学员性别：</td>
                <td>
                    <asp:RadioButton ID="rdoMen" runat="server" GroupName="gender" Text="男" /><asp:RadioButton ID="rdoFelmem" runat="server" Checked="True" GroupName="gender" Text="女" /></td>
                <td class="auto-style2"></td>

            </tr>
            <tr>
                <td>出生日期：</td>
                <td>
                    <asp:TextBox ID="txtBirthday" runat="server" onclick="WdatePicker()"></asp:TextBox>
                    （请点击文本框选择日期）</td>
                <td class="auto-style2">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*学员出生日期不能为空" Font-Names="微软雅黑" ForeColor="#FF3300" ControlToValidate="txtBirthday"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>所在班级：</td>
                <td>
                    <asp:DropDownList ID="dpdClassName" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td>
                    <asp:TextBox ID="txtStuIdCardNum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>联系电话：</td>
                <td>
                    <asp:TextBox ID="txtPhoneNum" runat="server" Width="299px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>家庭住址：
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Width="299px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>请输入验证码：</td>
                <td>
                    <asp:TextBox ID="txtCord" runat="server" Width="68px" CssClass="txt-auto"></asp:TextBox>
                    <img id="imgCode" style="width: 50px; height: 30px; float: left; width: 68px; height: 30px; float: left; margin: -9px 10px 10px 31px;" src="../Handler/CommonValidationCode.ashx" />
                    <a id="recode" style="text-decoration: underline; color: blue; font-family: '微软雅黑'; cursor: pointer;">点击刷新</a>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*验证码不能为空" Font-Names="微软雅黑" ForeColor="#CC6600" ControlToValidate="txtCord"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="提交学员信息" BorderColor="#003399" OnClick="btnSubmit_Click" BackColor="#3333FF" BorderStyle="None" Font-Bold="True" Font-Names="微软雅黑" ForeColor="White" Height="38px" Width="291px" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Literal ID="LtaMsg" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
        <div style="float: left; width: 127px; margin-left: 42px; margin-top: 44px">
            <asp:Image ID="imgStudent" runat="server" Width="127px" CssClass="auto-style3" />
        </div>
    </div>

</asp:Content>
