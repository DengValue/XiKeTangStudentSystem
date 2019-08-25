<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="StudentManage.aspx.cs" Inherits="XiKeTangStudentSystem.StudentManage" %>

<%@ Register Src="~/UserWebControls/QueryStuControl.ascx" TagPrefix="uc1" TagName="QueryStuControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/StudentManage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:QueryStuControl runat="server" ID="QueryStuControl" />
    <div id="data-src-Div">
        <!--使用Repeater控件
            -->
        <asp:Literal runat="server" ID="ltaMeg"></asp:Literal>
        <asp:Repeater ID="RepeaterList" runat="server">
            <ItemTemplate>
                <div class="stuinfo">
                    <div class="stuImg">
                        <asp:Image ID="StudentImg" runat="server" Height="136px" ImageUrl='<%#Eval("StudentID","~/images/student-img/{0}.png")%>' Width="150px" />
                    </div>
                    <div class="stuItem">
                        <span>姓名:</span><span style="width: 180px; color: blue;"><%# Eval("StudentName") %></span>&nbsp;&nbsp;
                        <span>性别:</span><span style="width: 180px; color: blue;"><%# Eval("Gender") %></span></div>
                    <div class="stuItem">
                        <span>班级:</span><span style="color: blue;"><%#Eval("ClassName") %></span>&nbsp;&nbsp;
                        <span>出生日期:</span> <span style="color: blue;"><%# Eval("Birthday","{0:yyyy-MM-dd}") %></span>
                    </div>
                    <div class="stuItem">
                        <span>家庭住址:</span><span style="width: 80px; color: blue;"> <%# Eval("StudentAddress") %></span>
                    </div>
                    <div class="stuItem">
                        <asp:HyperLink ID="hplModfy" runat="server" BackColor="White" BorderColor="White" Font-Names="宋体,微软雅黑" ForeColor="Blue" Target="_self"
                            NavigateUrl='<%#Eval("StudentId","~/StudentWebASP/EditStudent.aspx?StudentId={0}") %>'>修改信息
                        </asp:HyperLink>
                        <asp:LinkButton ID="lbtnDel" runat="server" OnClick="lbtnDel_Click" OnClientClick="return confirm('确认删除学员的信息吗？')" 
                            CommandArgument='<%# Eval("StudentId") %>'>删除学员信息</asp:LinkButton>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
        <%--<asp:DataList ID="dlDataStuInfo" runat="server" RepeatColumns="2">
            <ItemTemplate>
                <div class="stuinfo">
                    <div class="stuImg">
                        <asp:Image ID="StudentImg" runat="server" Height="136px" ImageUrl='<%#Eval("StudentID","~/images/student-img/{0}.png")%>' Width="150px" />
                    </div>
                    <div class="stuItem">
                        <span>姓名:</span><span style="width: 180px; color:blue;"><%# Eval("StudentName") %></span>&nbsp;&nbsp;
                        <span>性别:</span><span style="width:180px; color:blue;"><%# Eval("Gender") %></span></div>
                    <div class="stuItem">
                        <span>班级:</span><span style="color:blue;"><%#Eval("ClassName") %></span>&nbsp;&nbsp;
                        <span>出生日期:</span> <span style="color:blue;"><%# Eval("Birthday","{0:yyyy-MM-dd}") %></span> 
                    </div>
                    <div class="stuItem">
                        <span>家庭住址:</span><span style="width: 80px; color:blue;"> <%# Eval("StudentAddress") %></span>
                    </div>
                    <div class="stuItem">
                        <asp:HyperLink ID="hplModfy" runat="server" BackColor="White" BorderColor="White" Font-Names="宋体,微软雅黑" ForeColor="Blue" Target="_blank" 
                          NavigateUrl='<%#Eval("StudentId","~/Student/EditStudent.aspx?StudentId={0}") %>'>修改信息
                        </asp:HyperLink>
                        <asp:LinkButton ID="lbtnDel" runat="server">删除学员信息</asp:LinkButton>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>--%>
    </div>
</asp:Content>
