// 字体
#import "../util/font.typ": fonts, fontSize

// 文档
#let setDocument(title, author, doc) = {
  set document(
    // 标题
    title: title,
    // 作者
    author: author.map(author => author.name),
  )

  doc
}

// 页面
#let setPage(title, doc) = {
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
        )[#title]
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
        )[#counter(page).display("1")]
      )
    },
  )

  doc
}

// 段落
#let setPar(doc) = {
  set par(
    // 左右对齐
    justify: true,
    // 行间距
    leading: 0.75em,
  )

  doc
}

// 文字
#let setText(lang, doc) = {
  set text(
    // 语言
    lang: lang,
    // 地区
    region: lang,
    // 字号
    size: 12pt,
    // 字体
    // font: ,
  )

  doc
}

// 小标题
#let setHeading(doc) = {
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

  doc
}

// 样式
#let xgsLesson(info, author, doc) = {
  show: setDocument.with(info.title, author)
  show: setPage.with(info.title)
  show: setPar.with()
  show: setText.with(info.lang)
  show: setHeading.with()

  doc
}
