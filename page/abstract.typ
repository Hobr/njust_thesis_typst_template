// 字体
#import "../util/font.typ": fonts, fontSize

// 摘要
#let showAbstract(abstract, keywords: none, lang: "zh") = {
  align(
    left,
    par(
      first-line-indent: 0em,
      text(
        font: (fonts.en, fonts.zh_宋体),
        size: fontSize.五号,
        // 摘要
        (if lang == "zh" [ *［摘 要］*] else [*Abstract—*] + [#abstract]) + (
          // 关键词
          if keywords != none {
            [#if lang == "zh" [\ *［关键词］*] else [\ *Index Terms—*]] + [#keywords]
          }
        ),
      ),
    ),
  )

  line(length: 100%, stroke: 0.5pt)
}
