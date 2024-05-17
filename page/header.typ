// 标题
#let showTitle(title) = {
  align(
    center,
    par(
      justify: false,
      text(24pt, title),
    ),
  )
}

// 作者
#let showAuthor(author) = {
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
}
