
// 图标
#let icon(path) = box(
  baseline: 0.125em,
  height: 0.8em,
  width: 0.8em,
  align(center,image(path))
)

#let faAngleRight = icon("fa-angle-right.svg")

// 个人信息
#let info(
  color: black,
  name: "",
  phone: "",
  email: "",
  gender: "",
  location:"",
  identity:"",
  infos:(),
) = { 
  set text(fill: color)
  //姓名 电话 邮箱
  show par: set block(spacing: 1em)
  [
    #set align(center)

    #text(fill: color,size:2em,name)

    #icon("fa-phone.svg") #phone | #icon("fa-envelope.svg") #email

    #gender | #location | #identity
  ]

}


// 主体
#let resume(
  size: 10pt,
  themeColor: rgb(38, 38, 125),
  photograph: "",
  logo:"",
  infos,
  body
) = {
  // 页边距设定
  set page( margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1.5cm,
    right: 1.5cm,
  ))
  
  // 基础字体设定
  set text(size: size, lang: "zh", font: "Kaiti SC")

  // 标题
  show heading: set text(themeColor, 1.1em)

  show heading: set block(
    stroke: (bottom: 1pt + themeColor),
    // inset: 3pt,
    outset: 3pt,
    width: 100%,
  )
  
  // 更改 bullet list 的图标
  set list(
    indent: 1em, 
    body-indent: 0.2em, 
    marker: faAngleRight
  )

  // 主体设定
  set par(justify: true)
  
  
  // 首部与照片
  grid(
    columns: (10%,70%,15%),
    logo,
    infos,
    photograph
  )
  show par: set block(spacing: 0.65em)
  body
}

#let sidebar(..contents) = grid(
    columns: (auto, auto),
    gutter: (1em),
    ..contents
  )

//  颜色变灰
#let graytext = text.with(
  fill: rgb(32, 32, 32),
  size: 0.9em,
)

// 获奖
#let award(
  time,
  name,
  level
) = {
  grid(
    columns: (20%,50%,22.8%),
    row-gutter: (0.25em),
    column-gutter: 2em,
    text(fill:rgb(38, 38, 125),size:1.1em,strong(time)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(name)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(level)),
  )
}

#let item(
  time,
  name,
  role
) = {
  grid(
    columns: (20%, 60%, 13%),
    row-gutter: (0.25em),
    column-gutter: 2em,
    text(fill:rgb(38, 38, 125),size:1.1em,strong(time)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(name)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(role))
  )
}

// 教育背景
#let education(
  time,
  university,
  major,
  degree
) = {
  grid(
    columns: (25%,25%,25%,14%),
    row-gutter: (0.25em),
    column-gutter: 2em,
    text(fill:rgb(38, 38, 125),size:1.1em,strong(time)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(university)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(major)),
    text(fill:rgb(38, 38, 125),size:1.1em,strong(degree))
  )
}
