<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExitSys.aspx.cs" Inherits="XiKeTangStudentSystem.ExitSys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>喜课堂官网</title>
    <link rel="icon" href="~/images/school_32px_1182184_easyicon.net.ico" />
    <link rel="stylesheet" href="css/ExitSys.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--start topnavbar-->
            <div id="topnav">
                <div class="contentdiv contentdiv-top">
                    <div id="logo">
                        <a href="http://www.xiketang.com" target="_blank">
                            <img src="images/logo-black.png" /></a>
                    </div>
                    <div id="navlist">
                        <ul>
                            <li>
                                <a href="#">首页</a>
                            </li>
                            <li>
                                <a href="#">.NET合集</a>
                            </li>
                            <li>
                                <a href="#">热门直播</a>
                            </li>
                            <li>
                                <a href="#">本周课表</a>
                            </li>
                            <li>
                                <a href="#">讲师的留言板</a>
                            </li>
                        </ul>
                    </div>
                    <div class="reg">
                        <a href="#">注册</a>
                    </div>
                    <div class="login">
                        <a href="../login.html">登录</a>
                    </div>
                </div>
            </div>
            <!--end topnavbar-->

            <!--start course-->
            <div class="backgroud backgroud-coursediv">
                <div class="contentdiv contentdiv-course">
                    <div id="courseimg">
                        <img src="images/csharp-440-001.jpg" alt="喜課堂教育" />
                    </div>
                    <div id="courseName">跟CTO名师学.NET(综合班)</div>
                    <div id="courseTeacher">讲师：常老师</div>
                    <div id="courseTile">本课程解决C#初学者学习入门的问题，课程使用全新的方法解析什么是面向对象编程，并深入讲解面向对象学习中的难点问题，帮助初学者掌握快速学习的路线和各种方法。</div>
                    <div id="course-price">免费</div>
                    <div id="course-get">
                        <a href="#">马上参加</a>
                    </div>
                    <div style="clear: both;"></div>
                </div>

            </div>
            <!--end course-->

            <!--start courseItems-->
            <div class="backgroud courseItems">
                <div class="contentdiv contentdiv-courseItems">
                    <div class="left-courseItems">
                        <div class="left-courseItem">
                            <div class="left-courseTitle">课程适用：在校生、在职人员开发ERP、CRM、进销存、工控程序等C/S及B/S类型的管理信息系统或企业网站的《技能基础》部分学习。</div>
                            <div class="left-courseName">课程概述</div>
                            <div class="left-courseCentent">本课程，从零基础给您讲解.NET开发的应用领域，如何快速学好.NET/C#编程的方法，以及学习编程初期最重要的、最核心的技能点。让您学到任何教材和网上都无法找到的开发秘笈！</div>
                            <div class="left-courseTarget">
                                如果您在学习中遇到如下问题，则该课程非常适合您：<br />
                                1. 自己一直在自学编程，但是感觉方向和迷茫。<br />
                                2. 自己有点基础，但是不清楚什么是面向对象编程。<br />
                                3. 自己做过一些小程序，但是不知道企业项目开发需要什么知识。<br />
                            </div>
                        </div>
                        <div class="left-courseItem">
                            <div class="catalogDiv">课程目录</div>
                            <div class="catalogueItem">课时01：初学者如何学好.NET开发技术</div>
                            <div class="catalogueItem">课时02：学好C#开发必备的核心语法基础1</div>
                            <div class="catalogueItem">课时03：学好C#开发必备的核心语法基础2</div>
                            <div class="catalogueItem">课时04：学好C#开发必备的核心语法基础3</div>
                            <div class="catalogueItem">课时05：学好C#开发必备的核心语法基础4</div>
                            <div class="catalogueItem">课时06：C#程序逻辑强化练习</div>
                            <div class="catalogueItem">课时07：类与对象的深入理解</div>
                            <div class="catalogueItem">课时08：类与对象的基本使用</div>
                            <div class="catalogueItem">课时09：字段在类中的重要应用</div>
                            <div class="catalogueItem">课时10：属性在类中的特殊应用</div>
                            <div class="catalogueItem">课时11：对象的实例方法与方法的重载</div>
                            <div class="catalogueItem">课时12：对象的构造方法与对象的初始化器</div>
                            <div class="catalogueItem">课时13：使用泛型集合List存储对象</div>
                            <div class="catalogueItem">课时14：泛型集合Dictionary的使用</div>
                            <div class="catalogueItem">课时15：对象的基本排序方法</div>
                            <div class="catalogueItem">课时16：对象动态排序实现</div>
                            <div class="catalogueItem">课时17：C#中常用的文件操作</div>
                            <div class="catalogueItem">课时18：对象的序列化方法</div>
                            <div class="catalogueItem">课时19：对象反序列化及综合运用</div>
                            <div class="catalogueItem">课时20：Windows窗体、控件与事件</div>
                            <div class="catalogueItem">课时21：基于T-SQL创建数据库和数据表</div>
                            <div class="catalogueItem">课时22：基于T-SQL添加数据库的各种约束</div>
                            <div class="catalogueItem">课时23：ADO.NET数据访问基础</div>
                            <div class="catalogueItem">课时24：基于ADO.NET实现数据查询</div>
                            <div class="catalogueItem">课时25：ADO.NET数据访问优化方法</div>
                            <div class="catalogueItem">课时26：初学C#项目实战1</div>
                            <div class="catalogueItem">课时27：初学C#项目实战2</div>
                            <div class="catalogueItem">课时28：初学C#项目实战3</div>
                            <div class="catalogueItem">课时29：初学C#项目实战4</div>
                            <div class="catalogueItem">课时30：初学C#项目实战5</div>
                        </div>
                    </div>
                    <div class="right-courseItems">
                        <div class="right-courseItem">
                            <div class="right-weixingimg">
                                <img src="images/weixin-bigger.png" />
                            </div>
                            <div class="weixingHeader">课程官方微信号</div>
                            <div class="weixingTitle">关注微信您可以获得如下服务:</div>
                            <div class="weixingServe">
                                1.定期获得免费资源
                            </div>
                            <div class="weixingServe">
                                2.及时获得上课提醒
                            </div>
                        </div>
                        <div class="right-courseItem">
                            <div class="reconmondcourseTile">热门推荐</div>
                            <div class="courseImgContainer">
                                <div class="courseimg">
                                    <a href="#">
                                        <img src="images/csharp-224-001.jpg" /></a>
                                </div>
                                <div class="hotcuorseName"><a href="#">跟CTO名师学.NET(综合班)</a></div>
                            </div>
                            <div class="courseImgContainer">
                                <div class="courseimg">
                                    <a href="#">
                                        <img src="images/aspnet-224-001.jpg" /></a>
                                </div>
                                <div class="hotcuorseName"><a href="#">快速学会ASP.NET企业网站开发</a></div>
                            </div>
                            <div class="courseImgContainer">
                                <div class="hotcuorseName">
                                    <a href="#">
                                        <img src="images/csharp-224-007.jpg" /></a>
                                </div>
                                <div class="hotcuorseName"><a href="#">C# +SQL开发学员管理系统 </a></div>
                            </div>
                            <div class="courseImgContainer">
                                <div class="courseimg">
                                    <a href="#">
                                        <img src="images/csharp-224-008.jpg" /></a>
                                </div>
                                <div class="hotcuorseName"><a href="#">C# +SQLServer开发图书借阅系统</a></div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <!--end courseItems-->
            <!--start footer-->
            <div class="backgroud footerbg">
                <div class="contentdiv footerItems">
                    <div class="footerItem">
                        <div class="footerItem-title">
                            关于学院
						<ul>
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">加入我们</a></li>
                            <li><a href="#">联系我们</a></li>
                        </ul>
                        </div>
                    </div>
                    <div class="footerItem">
                        <div class="footerItem-title">
                            帮助中心
						<ul>
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">网站地图</a></li>
                        </ul>
                        </div>
                    </div>
                    <div class="footerItem">
                        <div class="footerItem-title footerlong">
                            合作伙伴
						<ul>
                            <li><a href="#">腾讯课堂</a></li>
                            <li><a href="#">网易云课堂</a></li>
                            <li><a href="#">CSDN学院</a></li>
                            <li><a href="#">百度传课</a></li>
                        </ul>
                        </div>
                    </div>
                    <div class=" workertime">工作时间：09:00-22:30</div>
                    <div class="footerweixing">
                        <img src="images/xiketangweixin.png" alt="xiketang 官方微信号" />
                    </div>
                    <div class="companyintroduction">
                        <div class="companyHeader">
                            公司说明：
                        </div>
                        <div class="comoanyTilte">
                            任何盗版侵权都将通过法律途径解决。
                        </div>
                    </div>
                    <div class="comoanyPic">
                        <div class="companycopyright">版权所有 © 2019 天津星阁教育科技有限公司 ▪ 津ICP备15001044号-2</div>
                        <div class="copyrightimg">
                            <a href="http://www.cnzz.com/stat/website.php?web_id=3026351" target="_blank" title="站长统计">
                                <img src="images/pic.gif" alt="站长统计" /></a>
                        </div>

                    </div>
                    <div class="collaborate">
                        <a href="https://www.baidu.com" title="可信任的友情链接" target="_blank">
                            <img src="images/kxweb.png" /></a>
                    </div>
                </div>
            </div>
            <!--end footer-->
        </div>
    </form>
</body>
</html>
