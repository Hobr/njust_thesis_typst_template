// 字体
#import "../util/font.typ": fonts, fontSize

// 标题
#let showTitle(title) = {
  align(
    center,
    text(
      font: (fonts.en, fonts.zh_黑体),
      size: fontSize.三号,
    )[#title],
  )
}

// 作者
#let showAuthor(author) = {
  let count = author.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 16pt,
    ..author.map(author => align(
      center,
      text(
        font: (fonts.en, fonts.zh_宋体),
        size: fontSize.五号,
      )[
        #author.name (#author.studentid)\
        #author.department#author.major
      ],
    )),
  )
}
