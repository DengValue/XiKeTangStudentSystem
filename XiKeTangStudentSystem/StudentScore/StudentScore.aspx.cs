using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Models;
using DAL;

namespace XiKeTangStudentSystem
{
    public partial class StudentScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["ClassName"] = "";
            }
            QueryStuControl.SelectClassName += QueryStuControl_SelectClassName;
        }

        private void QueryStuControl_SelectClassName(string className)
        {
            dgvScoreList.DataSource = new StudentScoreServer().GetStudentScoreList(className);
            dgvScoreList.DataBind();

            //throw new NotImplementedException();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void dgvScoreList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#2D2D30'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroudColor=currentcolor");
            }
        }
    }
}