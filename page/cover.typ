// 封面
// 字体
#import "../util/font.typ": fonts, fontSize

// 信息栏
#let coverKey(key) = {
  rect(
    width: 100%,
    inset: 5pt,
    stroke: none,
    text(
      size: fontSize.三号,
      font: fonts.zh_等线,
      overhang: true,
      spacing: 1250%,
    )[#key],
  )
}

#let coverValue(value) = {
  rect(
    width: 100%,
    inset: 5pt,
    stroke: (
      bottom: 0.75pt + black,
    ),
    text(
      size: fontSize.三号,
      font: fonts.zh_等线,
    )[#value],
  )
}

// 展示封面
#let showCover(info, author) = {
  align(center)[
    #v(75pt)
    #table(
      columns: (auto),
      rows: (auto, auto, auto),
      stroke: none,
      gutter: 32pt,
      par(
        leading: 1.15em,
        text(
          size: fontSize.一号,
          font: fonts.zh_黑体,
          tracking: -1.5pt,
        )[《ChatGPT时代的科技论文检索与写作》课程报告],
      ),
      text(
        size: fontSize.小一,
        font: fonts.zh_黑体,
        fill: rgb("#2f5597"),
      )[#info.title],
    )
    #v(18pt)

    #grid(
      columns: (25%, 57%),
      rows: (40pt, 40pt),
      coverKey("班级（班号）"),
      coverValue(author.at(0).studentid),
      coverKey("姓 名"),
      coverValue(author.at(0).name),
      coverKey("学 号"),
      coverValue(author.at(0).studentid),
      coverKey("学 院"),
      coverValue(author.at(0).department),
    )
    #v(44pt)

    #table(
      columns: (auto),
      rows: (auto, auto, auto),
      stroke: none,
      gutter: 18pt,
      text(size: fontSize.三号, font: fonts.zh_等线)[南京理工大学],
      text(size: fontSize.三号, font: fonts.zh_等线)[#info.date],
    )]
}
