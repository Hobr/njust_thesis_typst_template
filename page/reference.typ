// 字体
#import "../util/font.typ": fonts, fontSize

#let showReference(ref) = text(
  lang: "en",
  font: (fonts.en, fonts.zh_宋体),
  size: fontSize.五号,
)[#bibliography(
    "../template/" + ref,
    title: text(
      font: (fonts.en, fonts.zh_宋体),
      size: fontSize.四号,
    )[参考文献],
    full: true,
  )]
