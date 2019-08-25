using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 系统管理员实体
    /// </summary>
    public class SysAdmin
    {
        /// <summary>
        /// 登录用户ID
        /// </summary>
        public int LoginId { get; set; }
        /// <summary>
        /// 登录用户的密码
        /// </summary>
        public string  LoginPwd { get; set; }
        /// <summary>
        /// 管理员姓名
        /// </summary>
        public string  AdminName { get; set; }
    }
}
