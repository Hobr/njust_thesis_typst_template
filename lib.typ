// 包
#import "util/package.typ": *
// 本地
#import "util/font.typ": fontConf, fontSize

// 定义
#let njustThesis(
  // 论文类型: bachelor(本科学位), train(本科科研训练), xgs(谢国森老师公选论文课程)
  type: "xgs",
  // 信息
  info: (:),
   // 字体
  font: (:),
  // 参考文献
  ref: none,
  // 样式
  style:(:),
  doc,
) = {
  // 字体
  font = fontConf + font
  info = (
    // 题目
    title: "论文标题",
    title_en: "Title",
    // 作者
    author: "作者",
    author_en: "Author",
    // 学号
    studentid: "学号",
    // 班号
    classid: "班号",
    // 学院
    department: "学院",
    department_en: "Department",
    // 专业
    major: "专业",
    major_en: "Major",
    // 指导老师
    tutor: "指导老师",
    tutor_en: "Tutor",
    // 日期
    date: datetime.today(),
  ) + info
}
