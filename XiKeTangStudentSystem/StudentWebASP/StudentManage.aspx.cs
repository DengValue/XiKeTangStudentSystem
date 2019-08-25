using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.IO;
using Models;
using DAL;

namespace XiKeTangStudentSystem
{
    public partial class StudentManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //    List<StudentClass> listClass = new List<StudentClass>();
                //    listClass = new StudentClassServer().GetStudentClassList();
                //    dwlClassName.DataSource = listClass;
                //    dwlClassName.DataTextField = "ClassName";
                //    dwlClassName.DataValueField = "ClassId";
                //    dwlClassName.DataBind();
                //    dwlClassName.SelectedIndex = -1;
              ViewState["ClassName"] = "";
            }
            QueryStuControl.SelectClassName += new QueryStuControl.GetBindData(QueryStuControl_SelectClassName);
            
            this.ltaMeg.Text = "";
        }

        private void QueryStuControl_SelectClassName(string className)
        {
            ////dlDataStuInfo.DataSource = null;
            RepeaterList.DataSource = new StudentServer().GetStudentByClassName(className);
            RepeaterList.DataBind();
            ViewState["ClassName"] = className;
            //throw new NotImplementedException();
        }

        protected void lbtnDel_Click(object sender, EventArgs e)
        {
            string strStudentId = ((LinkButton)sender).CommandArgument;

            try
            {
                if (new StudentServer().DelStudentInfoById(strStudentId) == 1)
                {
                    //同步删除图片信息
                    File.Delete(Server.MapPath("~/images/student-img/" + strStudentId + ".png"));
                    //同步刷新 【可以使用jQuery刷新】
                    string su = ViewState["ClassName"].ToString();
                    QueryStuControl_SelectClassName(ViewState["ClassName"].ToString());
                }
            }
            catch (SqlException ex)
            {
                if (ex.Number == 547)
                {
                    //ltaMeg.Text = "<script type='text/javascript'>alert('" + ex.Message.Replace("\"", "_").Replace("\'", "_") + "')</script>";
                    throw new Exception("数据库删除操作异常" + ex.Message);
                }
                else
                {
                    //ltaMeg.Text = "<script type='text/javascript'>alert('" + ex.Message + "')</script>";
                    throw new Exception("数据库删除操作异常" + ex.Message);
                }
            }
            catch (Exception ex)
            {
                ltaMeg.Text = "<script type='text/javascript'>alert('" + ex.Message.Replace("\"", "_").Replace("\'", "_") + "')</script>";
                throw ex;
            }

        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{

        //    //dlDataStuInfo.DataSource = null;
        //    RepeaterList.DataSource = new StudentServer().GetStudentByClassName(dwlClassName.SelectedItem.Text.Trim());
        //    RepeaterList.DataBind();
        //}
    }
}