// 包
#import "util/package.typ": *
// 字体
#import "util/font.typ": fonts, fontSize

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

  // 正文
  body,
) = {
  // ----- 预设
  // 文档
  set document(
    // 标题
    title: info.title,
    // 作者
    author: author.map(author => author.name),
  )

  // 页面
  set page(
    // 纸张大小
    paper: "a4",
    // 边距
    margin: auto,
    // 页眉
    header: {
      align(
        center,
        text(
          font: fonts.zh_宋体,
          size: 10pt,
          baseline: 8pt,
          spacing: 3pt,
          info.title
        )
      )
      line(length: 100%, stroke: 0.1pt)
    },
    // 页脚
    footer: {
      align(
        center,
        text(
          size: 10pt,
          baseline: -3pt,
          counter(page).display("1")
        )
      )
    },
  )

  // 段落
  set par(
    // 左右对齐
    justify: true,
    // 行间距
    leading: 0.75em,
  )

  // 文字
  set text(
    // 语言
    lang: info.lang,
    // 地区
    region: info.lang,
    // 字号
    size: 12pt,
    // 字体
    // font: ,
  )

  // 章节标题
  set heading(numbering: "一.")

  show heading.where(level: 1): it => box(width: 100%)[
    #v(12pt)
    #align(left)[#it]
    #v(2pt)
  ]

  show heading.where(level: 2): it => box(width: 100%)[
    #v(6pt)
    #align(left)[#it]
    #v(2pt)
  ]

  // ----- 封面
  // 封面

  // 信息栏
  let coverKey(key) = {
    rect(
      width: 100%,
      inset: 5pt,
      stroke: none,
      text(
        size: fontSize.小三,
        overhang: false,
        key,
      ),
    )
  }

  let coverValue(value) = {
    rect(
      width: 100%,
      inset: 5pt,
      stroke: (
        bottom: 0.5pt + black,
      ),
      text(
        size: fontSize.小三,
        value,
      ),
    )
  }

  align(center)[
    #table(
      columns: (auto),
      rows: (auto, auto, auto),
      stroke: none,
      gutter: 32pt,
      text(size: fontSize.小一)[《ChatGPT时代的科技论文检索与写作》课程报告],
      text(size: fontSize.二号)[#info.title],
    )
    #v(20pt)

    #grid(
      columns: (100pt, 40%),
      rows: (35pt, 35pt),
      coverKey("班级(班号)"),
      coverValue(author.at(0).studentid),
      coverKey("姓　　名"),
      coverValue(author.at(0).name),
      coverKey("学　　号"),
      coverValue(author.at(0).studentid),
      coverKey("学　　院"),
      coverValue(author.at(0).department),
    )
    #v(10pt)

    #table(
      columns: (auto),
      rows: (auto, auto, auto),
      stroke: none,
      gutter: 12pt,
      text(size: fontSize.四号)[南京理工大学],
      text(size: fontSize.四号)[#info.date],
    )
  ]

  pagebreak(weak: true)

  // ----- 头部中文
  // 标题
  align(
    center,
    text(28pt, info.title),
  )
  v(8mm, weak: true)

  // 作者
  let count = author.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 16pt,
    ..author.map(author => align(center)[
      #author.name (#author.studentid)\
      #author.department#author.major
    ]),
  )
  v(8mm, weak: true)

  // 摘要
  align(center)[*摘要*]
  align(left)[#info.abstract]
  // 关键词
  align(left)[*关键词:* #info.keywords]
  v(8mm, weak: true)

  // ----- 头部英文
  // 标题
  align(
    center,
    text(28pt, info.titleEn),
  )
  v(8mm, weak: true)

  // 摘要
  align(center)[*Abstract*]
  align(left)[#info.abstractEn]
  // 关键词
  align(left)[*Keywords:* #info.keywordsEn]
  v(8mm, weak: true)

  // ----- 正文
  // 分栏
  show: main => columns(2, main)

  align(
    left,
    align(left, body + reference),
  )
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
