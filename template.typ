
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
  phone:"",
  email:"",
  infos:(),
) ={ 
  set text(fill: color)
  //姓名 电话 邮箱
  show par: set block(spacing: .5em)
  [
    #text(font: "Microsoft YaHei",fill: color,size: 1.5em,name)

    #icon("fa-phone.svg") #phone | #icon("fa-envelope.svg") #email
  ]
  set text(fill: black)
  //其他信息
  rect(
    width: 100%,
    fill: rgb(250,250,250),
    grid(
      columns: (1fr,1fr),
      row-gutter: 1em,
      ..infos
    )
    
  )
  
}


// 主体
#let resume(
  size: 10pt,
  themeColor: rgb(38, 38, 125),
  photograph: "",
  infos,
  body
) = {
  // 页边距设定
  set page( margin: (
    top: 1cm,
    bottom: 1cm,
    left: 2cm,
    right: 2cm,
  ))
  
  // 基础字体设定
  set text(size: size, lang: "zh")

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
    columns: (80%,15%),
    gutter: 20pt,
    infos,
    image(photograph)
  )
  show par: set block(spacing: 0.65em)
  v(-25pt)
  body
}

#let sidebar(..contents) = grid(
    columns: (auto, auto),
    gutter: (0.75em),
    ..contents
  )

//  颜色变灰
#let graytext = text.with(
  fill: rgb(32, 32, 32),
  size: 0.9em,
)

// 项目
#let award(
  title,
  desc,
  endnote
) = {
  grid(
    columns: (0.5fr , 2.5fr, 1.5fr),
    row-gutter: (0.25em),
    column-gutter: 2em,
    graytext(endnote),title, desc, 
  )
}


#let honor(
  title,
  endnote
) = {
  grid(
    columns: (0.6fr , 2.5fr+ 2.5fr),
    row-gutter: (0.25em),
    column-gutter: 2em,
    graytext(endnote),title, 
  )
}



#let item(
  title,
  desc,
  endnote
) = {
  grid(
    columns: ( 3.5fr, 0.9fr,0.7fr,),
    row-gutter: (0.25em),
    column-gutter: 2em,
    text(fill:rgb(38, 38, 125),size:1.1em,"• "+strong(title)), desc, graytext(endnote)
  )
}
