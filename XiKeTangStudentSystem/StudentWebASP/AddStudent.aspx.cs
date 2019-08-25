using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//
using System.Data;
using System.Data.SqlClient;
using Models;
using DAL;

namespace XiKeTangStudentSystem
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //使用回调的框架初始化下拉框
            if (!IsPostBack)
            {
                List<StudentClass> listClass = new List<StudentClass>();
                listClass = new StudentClassServer().GetStudentClassList();
                dpdClassName.DataSource = listClass;
                dpdClassName.DataTextField = "ClassName";
                dpdClassName.DataValueField = "ClassId";
                dpdClassName.DataBind();
                //imgCode.ImageUrl = "~/Handler/NewValidationCode.ashx";
            }
            LtaMsg.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //【1】检查学员的信息
            if (new StudentServer().IsExistsStudent(txtStuIdCardNum.Text.Trim()))
            {
                LtaMsg.Text = "<script type='text/javascript'>alert('学员信息重复请检查信息的输入！')</script>";
                return;

            }
            else
            {
                //【2】验证验证码是否正确
                if (txtCord.Text == Session["CheckCode"].ToString())
                {
                    //【3】封装学员数据
                    Student objStudent = new Student()
                    {
                        StudentName = txtNmae.Text.Trim(),
                        Gender = rdoMen.Checked ? "男" : "女",
                        Birthday = Convert.ToDateTime(txtBirthday.Text),
                        ClassID = dpdClassName.SelectedIndex,
                        StudentIDNub = txtStuIdCardNum.Text,
                        PhoneNumber = txtPhoneNum.Text,
                        StudentAddress = txtAddress.Text.Trim().Length == 0 ? "地址不详" : txtAddress.Text.Trim()
                    };
                    //【4】提交学员信息
                    try
                    {
                        int newStudentId = new StudentServer().AddStudentInfo(objStudent);
                        if (newStudentId > 0)
                        {
                            Response.Redirect("~/StudentWebASP/UpLoadImg.aspx?Id=" + newStudentId);
                            // LtaMsg.Text = "<script type='text/javascript'>alert('添加学员信息时出现错误:')</script>";
                        }
                    }
                    catch (Exception ex)
                    {
                        //LtaMsg.Text = "<script type='text/javascript'>alert(' 验证码错误，请重新输入验证码！')</script>";
                        LtaMsg.Text = "<script type='text/javascript'>alert('添加学员信息时出现错误:" + ex.Message.ToString().Replace('\'', '_') + " ')</script>";
                        //throw ex ;
                    }

                }
                else
                {
                    LtaMsg.Text = "<script type='text/javascript'>alert(' 验证码错误，请重新输入验证码！')</script>";
                    return;
                }
            }
        }
    }
}