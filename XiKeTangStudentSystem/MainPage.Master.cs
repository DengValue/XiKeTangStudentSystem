using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using DAL;
using Models;

namespace XiKeTangStudentSystem
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentUser"] == null)
            {
                Response.Redirect("~/login.html");
            }
            else
            {
                SysAdmin objCurrentUser = (SysAdmin)Session["CurrentUser"];
                username.Text = "欢迎您 ：&nbsp" + objCurrentUser.AdminName;
                //curentDateTime.Text = DateTime.Now.ToString();
            }
        }
    }
}