// 摘要
#let showAbstract(abstract, keywords: none, lang: "zh") = {
  align(
    center,
    if lang == "zh" [*摘要*] else if lang == "en" [*Abstract*],
  )
  align(left)[#abstract]

  // 关键词
  if keywords != none {
    align(
      left,
      (if lang == "zh" [*关键词:* ] else if lang == "en" [*Keywords:* ]) + [#keywords],
    )
  }
}
