using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using DAL;

namespace XiKeTangStudentSystem
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["CurrentUser"] == null)
            //{
            //    Response.Redirect("~/login.html");
            //}
            //else
            //{
            //    SysAdmin objCurrentUser = (SysAdmin)Session["CurrentUser"];
            //    //username.Text = "欢迎您 ：&nbsp" + objCurrentUser.AdminName;
            //    //curentDateTime.Text = DateTime.Now.ToString();
            //}
        }
    }
}