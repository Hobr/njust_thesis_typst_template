// 包
#import "util/package.typ": *
// 样式
#import "layout/xgsLesson.typ": xgsLesson
// 页面
#import "page/cover.typ": showCover
#import "page/header.typ": showTitle, showAuthor
#import "page/abstract.typ": showAbstract
#import "page/content.typ": showContent
#import "page/reference.typ": showReference

#let njustThesis(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: "题目",
    titleEn: none,
    // 摘要
    abstract: none,
    abstractEn: none,
    // 关键词
    keywords: none,
    keywordsEn: none,
    // 日期
    date: none,
    // 语言
    lang: "zh"
  ),

  // 作者
  author: (),

  // 指导老师
  supervisor: (),

  // 参考文献
  reference: none,

  // 双面打印
  twoside: false,

  // 正文
  body,
) = {
  // ----- 预设
  show: xgsLesson.with(info, author)
  // ----- 封面
  // 封面
  counter(page).update(0)
  showCover(info, author)
  pagebreak(weak: true)

  // 声明
  // showDeclare()

  // 中文
  // 标题
  showTitle(info.title)
  v(8mm, weak: true)
  // 作者
  showAuthor(author)
  v(8mm, weak: true)
  // 摘要
  showAbstract(info.abstract, keywords: info.keywords, lang: "zh")
  v(8mm, weak: true)

  // 英文
  // 标题
  showTitle(info.titleEn)
  v(8mm, weak: true)
  // 摘要
  showAbstract(info.abstractEn, keywords: info.keywordsEn, lang: "en")
  v(8mm, weak: true)

  // 目录
  // showToc()

  // ----- 正文
  showContent(body + showReference(reference))
  // 致谢
  // showAck()
  // 参考文献
  // showReference()
  // 附录
  // showAppendix()
}
