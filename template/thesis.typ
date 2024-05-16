#import "../lib.typ": njustThesis

// 配置
#show: njustThesis.with(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: [题目],
    titleEn: [Title],
    // 摘要
    abs: [
      Abstract abstract abstract abstract abstract abstract abstract abstract abstract, abstract abstract abstract abstract.
    ],
    // 日期
    date: datetime.today(),
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
      department: [学院],
      departmentEn: [Department],
      // 专业
      major: [XX专业],
      majorEn: [XX],
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

  // 字体
  font: (),

  // 参考文献
  reference: bibliography.with("ref.bib"),
)

// ---------- 模板生成
// 封面
// #cover()
// 声明
// #declare()
// 摘要
// #abstract()
// 目录
// #toc()

// ---------- 正文
// 引言
#include "chapter/intro.typ"
// 第二章
#include "chapter/chap2.typ"

// ---------- 模板生成
// 致谢
// #ack()
// 参考文献
// #reference()
// 附录
// #appendix()
