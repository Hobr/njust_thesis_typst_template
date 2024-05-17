#import "../util/font.typ": fonts, fontSize

// 信息栏
#let infoKey(key) = {
  rect(
    width: 100%,
    inset: 1pt,
    stroke: none,
    key,
  )
}

#let infoValue(value) = {
  rect(
    width: 100%,
    inset: 1pt,
    stroke: (
      bottom: 0.5pt + black,
    ),
    value,
  )
}

// 封面
#let showCover(info, author) = {
  align(center, text([《ChatGPT时代的科技论文检索与写作》课程报告]))
  align(center, text([#info.title]))

  align(
    center,
    grid(
      align: center,
      columns: (100pt, 200pt),
      rows: (35pt, 35pt),
      infoKey("班级(班号)"),
      infoValue(author.at(0).studentid),
      infoKey("姓名"),
      infoValue(author.at(0).name),
      infoKey("学号"),
      infoValue(author.at(0).studentid),
      infoKey("学院"),
      infoValue(author.at(0).department),
    ),
  )

  align(center, text([南京理工大学]))
  align(center, text([#info.date]))
}
