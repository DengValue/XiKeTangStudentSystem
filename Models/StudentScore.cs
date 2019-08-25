using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Models
{
    /// <summary>
    /// 学员成绩实体类
    /// </summary>
    [Serializable]
     public  class StudentScore
    {
        /// <summary>
        /// 成绩表ID
        /// </summary>
        public int ScoreId { get; set; }
        /// <summary>
        /// 学员ID
        /// </summary>
        public int StudentId { get; set; }
        /// <summary>
        /// 学员的C#成绩
        /// </summary>
        public int CSharp { get; set; }
        /// <summary>
        /// 学员的数据库成绩
        /// </summary>
        public int SQLServerDB { get; set; }
        /// <summary>
        /// 更新的数据的时间
        /// </summary>
        public DateTime UpdateTime { get; set; }

        #region 拓展字段
        /// <summary>
        /// 学员性别
        /// </summary>
        public string  Gender { get; set; }
        /// <summary>
        /// 学员姓名
        /// </summary>
        public string  StudentName { get; set; }
        #endregion
    }
}
