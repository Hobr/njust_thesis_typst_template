#import "../lib.typ": njustThesis

// 配置
#show: njustThesis.with(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: "软件包及其依赖分发管理的挑战与解决方案综述",
    titleEn: "Challenges and Solutions Review of Software Package and Dependency Distribution Management",
    // 摘要
    abstract: [随着开放源代码运动的发展及软件开发规模的不断扩大，软件包及其依赖的分发及管理成为软件分发的关键。然而，依赖关系的复杂性、版本兼容性问题以及安全性等挑战仍然困扰着软件开发者、发行版开发商和用户。本综述旨在探讨软件包及其依赖分发管理的主要挑战，介绍现有的解决方案和工具并探讨未来的发展方向，通过对比不同的管理工具和方法分析其优缺点，为开发者开发、维护软件以及发行版、包管理器开发商们创造新的软件包分发方案时提供经验。],
    abstractEn: [With the development of the Open-Source movement and the continuous expansion of software development scale, the distribution and management of software packages and their dependencies have become crucial aspects of software distribution. However, challenges such as the complexity of dependency relationships, version compatibility issues, and security concerns still persist, troubling software developers, distribution maintainers, and users alike. This review aims to explore the main challenges in the distribution and management of software packages and their dependencies, introduce existing solutions and tools, and discuss future development directions. By comparing different management tools and methods and analyzing their advantages and disadvantages, this review provides valuable insights for developers in the creation and maintenance of software, as well as for distribution maintainers and package manager developers in devising new software distribution solutions.],
    // 关键词
    keywords: "软件包; 依赖管理; 版本兼容性; 安全性; 依赖冲突; 开源",
    keywordsEn: "Software Package; Dependency Management; Version Compatibility; Security; Dependency Conflicts; Open Source",
    // 日期
    date: "2024年5月19日",
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
#include "chapter/1-引言.typ"
#include "chapter/2-基础.typ"
#include "chapter/3-主要挑战.typ"
#include "chapter/4-案例.typ"
#include "chapter/5-最佳实践.typ"
#include "chapter/6-解决方案与新兴技术.typ"
#include "chapter/7-未来趋势与研究方向.typ"
#include "chapter/8-总结.typ"
