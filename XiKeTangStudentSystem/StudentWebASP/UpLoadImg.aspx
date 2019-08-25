<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="UpLoadImg.aspx.cs" Inherits="XiKeTangStudentSystem.UpLoadImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/UploadImg.css" rel="stylesheet" />
    <link href="../css/AddStudent.css" rel="stylesheet" />
    <style type="text/css">
        .student-info-table {
            height: 274px;
            width: 960px;
        }
    </style>
    <script type="text/javascript">
        //检查图片是否选择了图片
        function CheckIsPngImg() {
            var fulImage = document.getElementById("<%= fulStudentimg.ClientID%>");
            if (fulImage.value=="") {
                alert("请先选择一张学员的图片资源！");
                return false;
            }
            return true;
        }
        //检查
        function CheckImg(FileUpload) {
            var fuvalue = FileUpload.value;
            fuvalue = fuvalue.toLowerCase().substr(fuvalue.lastIndexOf("."));
            if (fuvalue != ".png") {
                FileUpload.value = "";

                alert("请选择图片格式仅支持PNG的格式！");
            }
            else {
                //同步显示图片在图片框
                var docObj = document.getElementById("<%= fulStudentimg.ClientID%>");
                var stuImg = document.getElementById("<%= imgStu.ClientID%>");//获取图片框对象 
                //alert(docObj.files.toLowerCase() + docObj.files[0]);
                if (docObj.files && docObj.files[0]) {
                    //火狐下，直接设img属性
                    stuImg.style.display = 'block';
                    //stuImg.style.width = '150px';
                    //stuImg.style.height = '180px';
                    //imgObjPreview.src = docObj.files[0].getAsDataURL();
                    //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                    stuImg.src = window.URL.createObjectURL(docObj.files[0]);
                }
                //else
                //{
                //    //IE下，使用滤镜
                //    docObj.select();
                //    var imgSrc = document.selection.createRange().text;
                //    var localImagId = document.getElementById("localImag");
                //    //必须设置初始大小
                //    localImagId.style.width = "150px";
                //    localImagId.style.height = "180px";
                //    //图片异常的捕捉，防止用户修改后缀来伪造图片
                //    try {
                //        localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                //        localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                //    } catch (e) {
                //        alert("您上传的图片格式不正确，请重新选择!");
                //        return false;
                //    }
                //    imgObjPreview.style.display = 'none';
                //    document.selection.empty();
                //}
                //alert("显示图片！"+FileUpload.value);
                //stuImg.src = FileUpload.value;
                return true;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="student-info-table">
        <caption style="font-family: Arial SimSun 'Microsoft JhengHei' '微软雅黑'; color: aqua; width: 960px">第二步>>上传学员图像资源</caption>
        <tr>
            <td>
                <div class="student-img">
                    <asp:Image ID="imgStu" runat="server" ImageUrl="~/images/student-img/defaultImg.png"  />
                </div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="fulStudentimg" onchange="CheckImg(this)" runat="server" BackColor="White" BorderColor="White" BorderStyle="Inset" ToolTip="请选择学员的图像资源"  />
            </td>
        </tr>
        <tr>
            <td>

                <asp:Button ID="btnSubmit" runat="server"   BackColor ="#3399FF" BorderColor="#3399FF" BorderStyle="None" Font-Bold="True" Font-Names="微软雅黑" ForeColor="White" Height="26px" OnClientClick="return CheckIsPngImg()"  OnClick="btnSubmit_Click" Text="上传照片" Width="132px" />

            </td>
        </tr>
    </table>
    <asp:Literal ID="LtaMsg" runat="server"></asp:Literal>
</asp:Content>
