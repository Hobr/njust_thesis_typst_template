// 包
#import "util/package.typ": *
// 字体
#import "util/font.typ": fonts, fontSize
// 页面
#import "page/cover.typ": showCover
#import "page/header.typ": showTitle,showAuthor
#import "page/abstract.typ": showAbstract, showKeywords
#import "page/content.typ": showContent

#let njustThesis(
  // 类型
  type: "xgsLesson",

  // 信息
  info: (
    // 标题
    title: [题目],
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

  // 字体
  font: (),

  // 参考文献
  reference: none,

  // 正文
  body,
) = {
  // ---------- 文档
  // 文档
  set document(
    title: info.title,
    author: author.map(author => author.name),
  )

  // 页面
  set page(
    paper: "a4",
    margin: auto,
    // 页眉
    header: {
      set align(center)
      set text(font: fonts.zh_宋体, 10pt, baseline: 8pt, spacing: 3pt)
      [#info.title]
      line(length: 100%, stroke: 0.1pt)
    },
    // 页脚
    footer: [
      #set align(center)
      #set text(size: 10pt, baseline: -3pt)
      #counter(page).display("1")
    ],
  )

  // 文字
  set text(
    lang: info.lang,
    region: "cn",
    // font: ,
    size: 12pt,
  )

  // Heading
  set heading(numbering: "一.一.一.一. ")

  show heading.where(level: 1): it => box(width: 100%)[
    #set align(left)
    #v(8pt)
    #it
  ]

  show heading.where(level: 2): it => box(width: 100%)[
    #set align(left)
    #v(4pt)
    #it
  ]

  // ---------- 内容
  // ----- 封面
  showCover(info,author)
  pagebreak(weak: true)

  // ----- 头部中文
  showTitle(info.title)
  v(8mm, weak: true)

  showAuthor(author)
  v(8mm, weak: true)

  showAbstract(info.abstract)
  showKeywords(info.keywords)
  v(8mm, weak: true)

  // ----- 头部英文
  showTitle(info.titleEn)
  v(8mm, weak: true)

  showAbstract(info.abstractEn)
  showKeywords(info.keywordsEn)
  v(8mm, weak: true)

  // ----- 正文
  showContent(body + reference)

  // 封面
  // showCover()

  // 声明
  // showDeclare()

  // 摘要
  // showAbstract()

  // 目录
  // showToc()

  // 正文
  // showContent()

  // 致谢
  // showAck()

  // 参考文献
  // showReference()

  // 附录
  // showAppendix()
}
