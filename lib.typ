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
    absEn: none,
    // 关键词
    keywords: none,
    keywordsEn: none,
    // 日期
    date: datetime.today(),
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
  // -------------- 文档
  // 文档
  set document(
    title: info.title,
    author: author.map(author => author.name)
  )

  // 页面
  set page(
    paper: "a4",
    margin: auto,
    header: align(
      right + horizon,
      info.titleEn
    ),
    footer: none
  )

  // 文字
  set text(
    lang: info.lang,
    region: "cn",
    // font: ,
    size: 12pt,
  )

  // Heading
  set heading(numbering: "1.1 ")

  show heading.where(level:1):it => box(width: 100%)[
    #set heading(numbering: "I.")
    #set align(left)
    #v(8pt)
    #it
  ]

  show heading.where(level:2):it => box(width: 100%)[
    #set heading(numbering: "1.")
    #set align(left)
    #v(4pt)
    #it
  ]

  // ---------- 内容
  // ----- 抬头
  // --- 中文
  // 标题
  align(
    center,
    text(28pt, info.title)
  )
  v(8mm, weak: true)

  // 作者, 超过三个作者创建下一行
  let count = author.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 16pt,
    ..author.map(author => align(center, [
      #author.name (#author.studentid) \
      #author.department#author.major
    ])),
  )
  v(8mm, weak: true)

  // 摘要
  align(center, [*摘要*])
  align(left, [#info.abs])
  // 关键词
  align(left,[
    *关键词:* #info.keywords
  ])
  v(8mm, weak: true)

  // --- 英文
  // 标题
  align(
    center,
    text(28pt, info.titleEn)
  )
  v(8mm, weak: true)

  // 摘要
  align(center, [*Abstract*])
  align(left, [#info.absEn])
  // 关键词
  align(left,[
    *Keywords:* #info.keywordsEn
  ])
  v(8mm, weak: true)

  // ----- 正文
  set align(left)
  columns(2,body)

  // 参考文献
  reference
}
