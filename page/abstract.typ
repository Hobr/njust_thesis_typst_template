// 字体
#import "../util/font.typ": fonts, fontSize

// 摘要
#let showAbstract(abstract, keywords: none, lang: "zh") = {
  align(
    center,
    if lang == "zh" {
      text(
        font: (fonts.en, fonts.zh_宋体),
        size: fontSize.五号,
      )[*摘要*]
    } else if lang == "en" {
      text(
        font: fonts.en,
        size: fontSize.五号,
      )[*Abstract*]
    },
  )
  align(
    left,
    text(
      font: (fonts.en, fonts.zh_宋体),
      size: fontSize.五号,
    )[#abstract],
  )

  // 关键词
  if keywords != none {
    align(
      left,
      (
        if lang == "zh" {
          text(
            font: (fonts.en, fonts.zh_宋体),
            size: fontSize.五号,
          )[*关键词:* ]
        } else if lang == "en" {
          text(
            font: fonts.en,
            size: fontSize.五号,
          )[*Index Terms:* ]
        }
      ) + {
        text(
          font: (fonts.en, fonts.zh_宋体),
          size: fontSize.五号,
        )[#keywords]
      },
    )
  }
}
