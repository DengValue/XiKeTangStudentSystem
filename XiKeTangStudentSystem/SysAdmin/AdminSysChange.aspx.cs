using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using DAL;
using Models;

namespace XiKeTangStudentSystem
{
    public partial class AdminSysChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CurrentUser"] == null)
                {
                    Response.Redirect("~/login.aspx");
                }
                else
                {
                    SysAdmin objCurrentUser = new SysAdmin();
                    objCurrentUser = (SysAdmin)Session["CurrentUser"];
                    txtOldPwd.Text = objCurrentUser.LoginPwd;
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SysAdmin objAdminOld = new SysAdmin();
            txtOldPwd.Text = objAdminOld.LoginPwd;
            objAdminOld = (SysAdmin)Session["CurrentUser"];
            SysAdmin objAdmin = new SysAdmin() {
                LoginId= Convert.ToInt32( objAdminOld.LoginId),
                LoginPwd = txtNewPwd.Text.Trim()
            };
            
            if (new SysAdminHelperServer().AlterAdminPwd(objAdmin)!=0)
            {
                    Response.Write("<script type = 'text/javascript' >alert('用户密码修改成功！') ;location='../default.aspx'</script>");
                     // "<script type='text/javascript'>alert('用户名或密码错误！')</script>"
            }
           
        }
    }
}