using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XiKeTangStudentSystem
{
    public partial class UpLoadImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"]==null)
                {
                    Response.Redirect("~/errPage.html");
                }
                ViewState["StudentId"] = Request.QueryString["Id"];
            }
            this.LtaMsg.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //上传照片到服务器上
            if (!fulStudentimg.HasFile)
            {
                LtaMsg.Text = "<script type='text/javarscript'>alert('图片加载有误!')</script>";
                return;
            }
            //【2】限制图片的上传大小
            double fileLength = fulStudentimg.FileContent.Length / (1024.0 * 1024.0);
            if (fileLength>1.0)
            {
                LtaMsg.Text = "<script>alert('图片的大小超过1M')</script>";
                return;
            }
            //【3】获取图片的名称
            string fileName = this.fulStudentimg.FileName;
            if (fileName.Substring(fileName.LastIndexOf(".")).ToLower()!=".png")
            {
                LtaMsg.Text = "<script>alert('图片的格式必须为.png,请重新选择图片！')</script>";
                return;
            }
            fileName = ViewState["StudentId"] + ".png";     //修改为服务器统一的文件格式

            //【4】上传到服务器上
            try
            {
                string path = Server.MapPath("~/images/student-img");
                //【5】开始上传
                this.fulStudentimg.SaveAs(path+"/"+fileName);
                if (Request.QueryString["IsModify"] == "1")
                {
                    this.LtaMsg.Text = "<script>alert('图片修改成功！');location='StudentManage.aspx'</script>";
                }
                else
                {
                    this.LtaMsg.Text = "<script>alert('图片上传成功！');location='AddStudent.aspx'</script>";

                }
            }
            catch (Exception ex)
            {
                this.LtaMsg.Text = "<script>alert('图片上传失败！" + ex.Message + "')</script>";
                throw ex;
            }
        }
    }
}