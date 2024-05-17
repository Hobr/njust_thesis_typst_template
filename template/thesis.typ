#import "../lib.typ": njustThesis

// 配置
#show: njustThesis.with(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: "基于题目的题目",
    titleEn: "Title",
    // 摘要
    abstract: lorem(25),
    abstractEn: lorem(50),
    // 关键词
    keywords: "一 二 三",
    keywordsEn: "A B C",
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
  reference: bibliography("ref.bib",full: true),
)

// ---------- 正文
// 引言
#include "chapter/1.typ"
// 第二章
#include "chapter/2.typ"
