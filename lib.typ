// 包
#import "util/package.typ": *

#let njustThesis(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: [题目],
    titleEn: none,
    // 摘要
    abs: none,
    // 日期
    date: datetime.today(),
  ),

  // 作者
  author: (),

  // 指导老师
  supervisor: (),

  // 字体
  font: (),

  // 参考文献
  reference: none,

  // 正文
  body,
) = {
  set text(lang: "zh", region: "cn")
  set document(author: author.map(author => author.name))
  set page(paper: "a4", margin: auto, header:none, footer:none)

  // 页面
  body
}
