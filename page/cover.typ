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
      size: fontSize.小三,
      overhang: true,
      spacing: 1000%,
    )[#key],
  )
}

#let coverValue(value) = {
  rect(
    width: 100%,
    inset: 5pt,
    stroke: (
      bottom: 0.5pt + black,
    ),
    text(size: fontSize.小三)[#value],
  )
}

// 展示封面
#let showCover(info, author) = {
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
      coverKey("姓 名"),
      coverValue(author.at(0).name),
      coverKey("学 号"),
      coverValue(author.at(0).studentid),
      coverKey("学 院"),
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
}
