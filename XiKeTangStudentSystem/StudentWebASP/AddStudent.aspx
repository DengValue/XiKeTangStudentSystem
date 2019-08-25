<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="XiKeTangStudentSystem.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/AddStudent.css" />
    <script type="text/javascript" src="../Js/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="../Js/jquery.min.js"></script>
    <style type="text/css">
        .student-info-table {
            width: 960px;
        }

        .auto-style1 {
            height: 42px;
        }

        .auto-txt {
            float: left;
            width: 68px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#refresh").click(function () {
                $("#imgCode").attr("src", function () {
                    return "../Handler/NewValidationCode.ashx?a=" + new Date().getMilliseconds();
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="student-info-table">
        <caption>第一步填写学员基本信息>></caption>
        <tr>
            <td>学员姓名：</td>
            <td>
                <asp:TextBox ID="txtNmae" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入学员的姓名！" Font-Names="微软雅黑" ForeColor="#FF3300" ControlToValidate="txtNmae"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style1">学员性别：</td>
            <td class="auto-style1">
                <asp:RadioButton ID="rdoMen" runat="server" GroupName="gender" Text="男" /><asp:RadioButton ID="rdoFelmem" runat="server" Checked="True" GroupName="gender" Text="女" /></td>
            <td class="auto-style1"></td>

        </tr>
        <tr>
            <td>出生日期：</td>
            <td>
                <asp:TextBox ID="txtBirthday" runat="server" onclick="WdatePicker()"></asp:TextBox>
                （请点击文本框选择日期）</td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*学员出生日期不能为空" Font-Names="微软雅黑" ForeColor="#FF3300" ControlToValidate="txtBirthday"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>所在班级：</td>
            <td>
                <asp:DropDownList ID="dpdClassName" runat="server">
                </asp:DropDownList>
            </td>
            <td></td>
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
                <asp:TextBox ID="txtCord" runat="server" Width="68px" CssClass="auto-txt"></asp:TextBox>
                <img id="imgCode" style="width: 100px; height: 30px; margin-left: 42px; margin-top: -8px; float: left; margin-right: 15px;" src="../Handler/NewValidationCode.ashx" />
                <a id="refresh" style="cursor: pointer; font-family: '微软雅黑'; text-decoration: underline; color: blue;">刷新验证码</a>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*验证码不能为空" Font-Names="微软雅黑" ForeColor="#CC6600" ControlToValidate="txtCord"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="提交学员信息" OnClick="btnSubmit_Click" BorderColor="White" ForeColor="#000099" Height="30px" Width="151px" />
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Literal ID="LtaMsg" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
</asp:Content>
