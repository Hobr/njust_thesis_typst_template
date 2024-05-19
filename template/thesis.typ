#import "../lib.typ": njustThesis

// 配置
#show: njustThesis.with(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: "南京理工大学是？",
    titleEn: "Nanjing University of Science and Technology is What",
    // 摘要
    abstract: [南京理工大学是隶属于工业和信息化部的全国重点大学，学校由创建于1953年的新中国军工科技最高学府中国人民解放军军事工程学院（简称“哈军工”）分建而成，经历了中国人民解放军炮兵工程学院、华东工程学院、华东工学院等发展阶段，1993年更名为南京理工大学。1995年，学校成为国家首批“211工程”重点建设高校；2000年，获批成立研究生院；2011年，获批建设“985工程优势学科创新平台”；2017年，学校入选“双一流”建设高校，“兵器科学与技术”学科入选“双一流”建设学科；2018年，王泽山院士获得国家最高科学技术奖，同年，学校成为工信部、教育部、江苏省共建高校。进入新时代、开启新征程，学校坚持“以人为本，厚德博学”的办学理念，秉持“进德修业，志道鼎新”的校训，弘扬“团结、献身、求是、创新”的校风，以服务国家战略需求、推动社会进步为使命，为党育英才、为国铸利器，围绕陆海空天信融合发展，向特色鲜明世界一流大学的目标奋勇前进。],
    abstractEn: [Nanjing University of Science and Technology is a national key university affiliated to the Ministry of Industry and Information Technology. The school was established in 1953 by the Chinese People's Liberation Army Military Engineering College (referred to as "Harbin Military Industry"), the highest institution of military science and technology in New China. It has experienced China's It was in the development stage of the People's Liberation Army Artillery Engineering College, East China Institute of Engineering, and East China Institute of Technology. In 1993, it was renamed Nanjing University of Science and Technology. In 1995, the school became one of the first batch of national "211 Project" key universities; in 2000, it was approved to establish a graduate school; in 2011, it was approved to build the "985 Project Advantageous Discipline Innovation Platform"; in 2017, the school was selected for the "Double First-Class" construction At the university, the "Weapons Science and Technology" discipline was selected as a "Double First-Class" construction discipline; in 2018, Academician Wang Zeshan won the country's highest science and technology award. In the same year, the school became a university jointly built by the Ministry of Industry and Information Technology, the Ministry of Education, and Jiangsu Province. Entering a new era and embarking on a new journey, the school adheres to the school-running philosophy of "people-oriented, virtuous and knowledgeable", upholds the school motto of "advancing morals, cultivating talents, and pursuing innovation", and promotes the school spirit of "unity, dedication, truth-seeking, and innovation" to serve the country It takes strategic needs and promotes social progress as its mission, educates talents for the party and forges weapons for the country, focuses on the integrated development of land, sea, air, space and information, and marches forward bravely towards the goal of becoming a world-class university with distinctive characteristics.],
    // 关键词
    keywords: "南京理工大学 华东工学院 华东工程学院 炮兵工程学院 军事工程学院",
    keywordsEn: "NJUST; Nanjing; University; 211; 984",
    // 日期
    date: "2024年5月18日",
    // 语言
    lang: "zh"
  ),

  // 作者
  author: (
    (
      // 姓名
      name: "张三",
      nameEn: "Zhang San",
      // 学生证号
      studentid: "922114514101",
      // 班级号
      classid: "9221145141",
      // 学院
      department: "X学院",
      departmentEn: "School of XX",
      // 专业
      major: "XX专业",
      majorEn: "XX Major",
    ),
  ),

  // 指导老师
  supervisor: (
    (
      // 姓名、职称
      name: "李四教授",
      nameEn: "Professor Li Si"
    ),
  ),

  // 参考文献
  reference: "ref.bib",

  // 双面打印
  twoside: false,
)

// ---------- 正文
// 引言
#include "chapter/1.typ"
// 第二章
#include "chapter/2.typ"
