<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="StudentScore.aspx.cs" Inherits="XiKeTangStudentSystem.StudentScore" %>

<%@ Register Src="~/UserWebControls/QueryStuControl.ascx" TagPrefix="uc1" TagName="QueryStuControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:QueryStuControl runat="server" ID="QueryStuControl" />

    <asp:GridView ID="dgvScoreList" runat="server" AutoGenerateColumns="False" Height="60px" Width="956px" OnRowDataBound="dgvScoreList_RowDataBound" OnSelectedIndexChanged="dgvScoreList_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="StudentName" HeaderText="学员姓名">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Font-Names="微软雅黑" ForeColor="#660066" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="性别">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Font-Names="微软雅黑" ForeColor="#660066" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CSharp" HeaderText="C#成绩">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Font-Names="微软雅黑" ForeColor="#660066" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="SQLServerDB" HeaderText="SQL成绩">
                <HeaderStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Font-Names="微软雅黑" ForeColor="#660066" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:HyperLinkField HeaderText="详细信息" Text="查看学员信息" DataNavigateUrlFields="StudentId" DataNavigateUrlFormatString="~/StudentWebASP/StudentDetail.aspx?Student={0}">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Font-Names="微软雅黑" ForeColor="Blue" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
</asp:Content>
