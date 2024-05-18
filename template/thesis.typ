#import "../lib.typ": njustThesis

// 配置
#show: njustThesis.with(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: "软件包管理的历史沿革",
    titleEn: "",
    // 摘要
    abstract: [],
    abstractEn: [],
    // 关键词
    keywords: "软件包; 依赖; 分发; 开源",
    keywordsEn: "Package Manage; Dependency; Disturbute; Open Source",
    // 日期
    date: "2024年5月18日",
    // 语言
    lang: "zh"
  ),

  // 作者
  author: (
    (
      // 姓名
      name: "拓欣",
      nameEn: "Tuo Xin",
      // 学生证号
      studentid: "922114740127",
      // 课程班级号
      classid: "YT000110",
      // 学院
      department: "外国语学院",
      departmentEn: "School of Foreign Studies",
      // 专业
      major: "日语专业",
      majorEn: "Japanese Major",
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
