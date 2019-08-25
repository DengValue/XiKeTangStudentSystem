using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Student
    {
        /// <summary>
        /// 学员ID    
        /// </summary>
        public int StudentID { get; set; }
        /// <summary>
        /// 学员姓名
        /// </summary>
        public string StudentName { get; set; }
        /// <summary>
        /// 学员性别
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// 学员生日
        /// </summary>
        public DateTime Birthday { get; set; }
        /// <summary>
        /// 学员身份证号
        /// </summary>
        public string StudentIDNub { get; set; }
        /// <summary>
        /// 学员ID卡号
        /// </summary>
        public string StudentCardNo { get; set; }
        /// <summary>
        /// 学员照片信息
        /// </summary>
        public string StuImage { get; set; }
        /// <summary>
        /// 学员年龄  （现做练习使用，后可以改为动态获取年龄）
        /// </summary>
        public int Age { get; set; }
        /// <summary>
        /// 手机号码
        /// </summary>
        public string PhoneNumber { get; set; }
        /// <summary>
        /// 学员地址
        /// </summary>
        public string StudentAddress { get; set; }
        /// <summary>
        /// 学员班级ID
        /// </summary>
        public int ClassID { get; set; }
    }
}
