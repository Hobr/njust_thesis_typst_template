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

// 页眉
#let pageHeader(title) = locate(loc => {
  if loc.page() > 1 [
    #align(
      center,
      text(
        font: fonts.zh_宋体,
        size: 10pt,
        baseline: 8pt,
        spacing: 3pt,
      )[#title],
    )
    #line(length: 100%, stroke: 0.1pt)
  ]
})

// 页脚
#let pageFooter() = locate(loc => {
  if loc.page() > 1 [
    #align(
      center,
      text(
        size: 12pt,
        baseline: 16pt,
      )[#counter(page).display("- 1 / 1 -", both: true)],
    )
  ]
})

// 页面
#let setPage(title, doc) = {
  set page(
    // 纸张大小
    paper: "a4",
    // 边距
    margin: auto,
    // 页眉
    header: pageHeader(title),
    // 页脚
    footer: pageFooter(),
  )
  doc
}

// 段落
#let setPar(doc) = {
  set par(
    // 行距
    leading: 1.5em,
    // 行首缩进
    first-line-indent:2em
  )
  doc
}

// 文字
#let setText(lang, doc) = {
  set text(
    // 语言
    lang: lang,
    // 地区
    region: "cn",
    // 字体
    font: (fonts.en,fonts.zh_宋体),
    // 字号
    size: fontSize.小四,
  )
  doc
}

// 小标题
#let setHeading(doc) = {
  set heading(numbering: "1.1.1.1.1   ")
  show heading: it => box(width: 100%)[
    #v(8pt)
    #align(
      left,
      text(
        font: (fonts.en, fonts.zh_宋体),
        size: fontSize.四号,
      )[#it],
    )
    #v(2pt)
  ]
  doc
}

// 图注
#let setCaption(doc) = {
  // 图注
  show figure.caption: set text(
    font: (fonts.en, fonts.zh_宋体),
    size: fontSize.五号,
  )
  // 跨页分割
  show figure: set block(breakable: true)
  doc
}

// 样式
#let xgsLesson(info, author, doc) = {
  show: setDocument.with(info.title, author)
  show: setPage.with(info.title)
  show: setPar.with()
  show: setText.with(info.lang)
  show: setHeading.with()
  show: setCaption.with()
  doc
}
