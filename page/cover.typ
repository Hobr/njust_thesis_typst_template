#import "../util/font.typ": fonts, fontSize

// 信息栏
#let coverKey(key) = {
  rect(
    width: 100%,
    inset: 4pt,
    stroke: none,
    text(
      size: fontSize.小三,
      spacing: 1200%,
      overhang: false,
      key,
    ),
  )
}

#let coverValue(value) = {
  rect(
    width: 100%,
    inset: 4pt,
    stroke: (
      bottom: 0.5pt + black,
    ),
    text(
      size: fontSize.小三,
      value,
    ),
  )
}

// 封面
#let showCover(info, author) = {
  v(40pt)
  align(
    center,
    text(size: fontSize.小一, [《ChatGPT时代的科技论文检索与写作》课程报告]),
  )
  v(20pt)

  align(center, text(size: fontSize.二号, [#info.title]))
  v(20pt)

  align(
    center,
    grid(
      columns: (100pt, 200pt),
      rows: (35pt, 35pt),
      coverKey("班级(班号)"),
      coverValue(author.at(0).studentid),
      coverKey("姓 名"),
      coverValue(author.at(0).name),
      coverKey("学 号"),
      coverValue(author.at(0).studentid),
      coverKey("学 院"),
      coverValue(author.at(0).department),
    ),
  )
  v(20pt)

  align(center, text(size: fontSize.四号, [南京理工大学]))
  align(center, text(size: fontSize.四号, [#info.date]))
}
