using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using System.Data;
using System.Data.SqlClient;
using Models;

namespace DAL
{
    /// <summary>
    /// 
    /// </summary>
    public class SysAdminHelperServer
    {
        public SysAdmin GetLoginAdminInfo(SysAdmin objAdmin, bool Param)
        {
            SqlDataReader dr=null;
            if (!Param)
            {
                StringBuilder objStrBder = new StringBuilder("Select LoginId ,LoginPwd ,AdminName from Admins where ");
                objStrBder.Append(string.Format(" LoginId='{0}' and LoginPwd = '{1}'", objAdmin.LoginId, objAdmin.LoginPwd));

                //string sql = "Select LoginId ,LoginPwd ,AdminName from Admins where LoginId='{0}' and LoginPwd='{1}'";
                //sql = string.Format(sql, objAdmin.LoginId, objAdmin.LoginPwd);
                dr= SQLHelper.GetReader(objStrBder.ToString());
            }
            else
            {
               
            }

            try
            {
                if (dr.Read())
                {
                    objAdmin = new SysAdmin()
                    {
                        LoginId = Convert.ToInt32(dr["LoginId"]),
                        AdminName = dr["AdminName"].ToString(),
                        LoginPwd = dr["LoginPwd"].ToString()
                    };
                    dr.Close();
                }
                else
                {
                    objAdmin = null;

                }
            }
            catch (SqlException)
            {
                throw new Exception("数据库连接异常出现问题！");
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return objAdmin;
        }
    }
}

