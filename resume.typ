#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
#let faAward = icon("fa-award.svg")
#let faBuildingColumns = icon("fa-building-columns.svg")
#let faCode = icon("fa-code.svg")

#let faGraduationCap = icon("fa-graduation-cap.svg")
#let faWrench = icon("fa-wrench.svg")
#let faPratice = icon("fa-pratice.svg")
// 主题颜色
#let themeColor = rgb(38, 38, 125)

#show strong: it=> { 
//  text(font: ("Times New Roman","SimHei"),it)
  text(stroke: 0.25pt + themeColor, it.body )
}

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // photograph: image("", width: 60pt),
  // logo: image("logo.png", width: 75pt)
)[
  #info(
    color:  themeColor,
    name:   "张三",
    phone:  "1**-****-****",
    email:  "xxxxx@qq.com",
    gender: "男", 
    identity: "中共党员", 
    location: "北京市海淀区"
  )
]


== #faGraduationCap *教育背景*

#education(
  "2021年-2025年",
   "某大学",
  "专业",
  align(right)[学士],
)

本科期间主修课程:操作系统,计算机网络,计算机组成,数据库系统,编译原理。主干课成绩92分,绩点4.0/4.0,居专业第一。



== #faAward *获奖情况*

#award(
  [ 2023.5 ],
  [ 某比赛1 ],
  align(right)[国际特等奖]
)

#award(
  [ 2023.10 ],
  [ 某比赛2 ],
  align(right)[国家级铜奖]
)

#award(
  [ 2024.12 ],
  [ 奖学金 ],
  align(right)[国家级]
)


== #faCode *科研经历*

#item([2023.03 - 2023.08],[某某项目],align(right)[第一作者])

-- * 负责内容:* 

-- * 项目成果:* 全国大学生创新训练计划国家级结项

== #faPratice *实习经历*

#item([2024.08 - 2024.12],[某公司],align(right)[后端开发])
 

-- * 任务1 * 

-- * 任务2 *

-- * 任务3 * 

-- * 任务4 * 
