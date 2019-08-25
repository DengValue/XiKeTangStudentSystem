using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using Models;
using DAL;

namespace XiKeTangStudentSystem
{
    public partial class EditStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<StudentClass> listClass = new List<StudentClass>();
                listClass = new StudentClassServer().GetStudentClassList();
                dpdClassName.DataSource = listClass;
                dpdClassName.DataTextField = "ClassName";
                dpdClassName.DataValueField = "ClassId";
                dpdClassName.DataBind();
                //【1】获取学员的ID
                string studentId = Request.QueryString["StudentId"].ToString();
                StudentSimpleExt objStudent = new StudentSimpleExt();
                objStudent = new StudentServer().GetStuSentById(studentId);
                //【2】解析对象
                latStudentId.Text = studentId;
                txtNmae.Text = objStudent.StudentName;
                txtAddress.Text = objStudent.StudentAddress;
                txtBirthday.Text = objStudent.Birthday.ToString("yyyy-MM-dd");
                txtPhoneNum.Text = objStudent.PhoneNumber;
                dpdClassName.SelectedIndex = objStudent.ClassID;
                rdoFelmem.Checked = objStudent.Gender == "女" ? true : false;
                rdoMen.Checked = objStudent.Gender == "女" ? false : true;
                txtStuIdCardNum.Text = objStudent.StudentIDNub;
                imgStudent.ImageUrl = string.Format("~/images/student-img/{0}.png", studentId);
            }
            LtaMsg.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StudentServer objStudentServer = new StudentServer();
            //【1】判断身份证是否重复
            if (objStudentServer.IsExistsStudent(latStudentId.Text.Trim(), txtStuIdCardNum.Text.Trim()))
            {
                LtaMsg.Text = "<script type='text / javascript'>alert('" + latStudentId.Text.Trim() + "学员身份号信息已存在！请检查学员的身份证号')</script>";
                return;
            }
            //【2】封装学员对象
            Student objStudent = new Student()
            {
                StudentID = Convert.ToInt32(latStudentId.Text.Trim()),
                StudentName = txtNmae.Text.Trim(),
                StudentAddress = txtAddress.Text.Trim(),
                Birthday=Convert.ToDateTime(txtBirthday.Text),
                PhoneNumber= txtPhoneNum.Text.Trim() ,
                ClassID=dpdClassName.SelectedIndex,
                Gender=rdoFelmem.Checked ? "女":"男",
                StudentIDNub= txtStuIdCardNum.Text.Trim()
            };

            if (objStudentServer.ModifyStudentInfo(objStudent) != 1)
            {
                //LtaMsg.Text = "<script type='text / javascript'>alert('" + latStudentId.Text.Trim() + "学员身份号信息已存在！请检查学员的身份证号')</script>";
                Response.Redirect("~/errPage.html");
            }
            else
            {
                Response.Redirect("~/StudentWebASP/UpLoadImg.aspx?IsModify=1&Id=" + objStudent.StudentID);
            }

        }
    }
}