using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//引入命名空间
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    /// <summary>
    /// 使用SQL数据服务器类
    /// </summary>
    public class SQLHelper
    {
        public static readonly string contentStr = ConfigurationManager.ConnectionStrings["sqlConntString"].ToString();

        #region  组合简单SQL语句

        #region 执行 增 删 改的操作
        /// <summary>
        /// 执行增、删、改、查
        /// </summary>
        /// <param name="strSql"></param>
        /// <returns></returns>
        public static int UpDate(string strSql)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand com = new SqlCommand(strSql, conn);
            try
            {
                conn.Open();
                return com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                //记录数据库错误信息
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
        #endregion
        /// <summary>
        /// 查询单个实体对象
        /// </summary>
        /// <param name="strSql"></param>
        /// <returns></returns>
        public static object GetSingleResult(string strSql)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand comd = new SqlCommand(strSql, conn);
            try
            {
                conn.Open();
                return comd.ExecuteScalar();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
        /// <summary>
        /// 执行查询结果：返回dataReader对象
        /// </summary>
        /// <param name="strSql"></param>
        /// <returns></returns>
        public static SqlDataReader GetReader(string strSql)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand comd = new SqlCommand(strSql, conn);

            try
            {
                conn.Open();
                return comd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
        }
        /// <summary>
        /// 获取数据表对象
        /// </summary>
        /// <param name="strSql"></param>
        /// <returns></returns>
        public static DataSet GetDataSeter(string strSql)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand comd = new SqlCommand(strSql, conn);
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        #endregion

        #region 带参数的SQL语句
        /// <summary>
        /// 执行增、删、改
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public static int UpDate(string sql, SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            if (param != null)
            {
                cmd.Parameters.AddRange(param);
            }
            try
            {
                conn.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static object GetSingleResult(string strSql,SqlParameter [] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand comd = new SqlCommand(strSql, conn);
            if (param!=null)
            {
                comd.Parameters.AddRange(param);
            }
            try
            {
                conn.Open();
                return comd.ExecuteScalar();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
        public static SqlDataReader GetReaderByParam(string sql, SqlParameter [] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            if (param != null)
            {
                cmd.Parameters.AddRange(param);
            }
            try
            {
                conn.Open();
               return   cmd.ExecuteReader( CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
          
        }
        /// <summary>
        /// 获取学员对象的信息（通过存储过程）
        /// </summary>
        /// <param name="procName"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public static SqlDataReader GetReader(string procName, SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand comd = new SqlCommand();
            comd.Connection = conn;
            if (param != null)
            {
                comd.Parameters.AddRange(param);
            }
            try
            {
                conn.Open();
                comd.CommandText = procName;
                comd.CommandType = CommandType.StoredProcedure;
                return comd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
        }
        #endregion

        #region  执行带参数的存储过程
        public static int UpdateByProcedure(string procName, SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            try
            {
                conn.Open();
                if (param != null)
                {
                    cmd.Parameters.AddRange(param);
                }
                cmd.CommandText = procName;
                cmd.CommandType = CommandType.StoredProcedure;
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                conn.Close();
                //写入操作数据库 log
                throw ex;

            }
            finally
            {
                conn.Close();
            }
        }
        public static object GetSingleResultByProc(string procName, SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(contentStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            try
            {
                if (param != null)
                {
                    cmd.Parameters.AddRange(param);

                }
                conn.Open();
                cmd.CommandText = procName;
                cmd.CommandType = CommandType.StoredProcedure;
                return cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
        #endregion
    }
}
