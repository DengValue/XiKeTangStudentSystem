using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using DAL;
using Models;
using System.Data;
using System.Data.SqlClient;

namespace XiKeTangStudentSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 登录到学员系统服务器
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SysAdmin objAdmin = new SysAdmin()
            {
                LoginId = Convert.ToInt16(txtUserName.Text.Trim()),
                LoginPwd = txtPWD.Text.Trim()
            };
            try
            {
                objAdmin = new SysAdminHelperServer().GetLoginAdminInfo(objAdmin,true);
                if (objAdmin == null)
                {
                    Response.Write("<script type='text/javascript'>alert('用户名或密码错误！')</script>");
                }
                else
                {
                    //Session["CurrentUser"] = objAdmin;
                    Response.Redirect("~/default.aspx",false);
                }
            }
            catch (Exception ex )
            {
                Response.Write("<script type='text/javascript'>alert('用户名或密码错误！" +ex.ToString()+" ')</script>");

                throw ex;
            }

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnindex_Click(object sender, EventArgs e)
        {

        }
    }
}