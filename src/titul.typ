#set text(font: "Times New Roman", size: 14pt, lang: "ru")
#set page(margin: (
  top: 2cm,
  left: 3cm,
  right: 1cm,
  bottom: 2cm
))

#let quote = symbol(
  ("left", "«"),
  ("right", "»")
)

#let quoted(it) = {
  quote.left + it + quote.right
}

#let titul(..it) = {
  
  figure(
    image("/src/logo.jpg", height: 13%),
  )
  set align(center)
  set par(leading: 6pt, spacing: 6pt)

  [
  МИНОБРНАУКИ РОССИИ

  Федеральное государственное бюджетное образовательное учреждение высшего образования
  
  ]
  
  [*"МИРЭА - Российский технологический университет"*
  
  *РТУ МИРЭА*]
  line(length: 95%)
  v(-3.5pt)
  line(length: 95%)
  
  linebreak()
  linebreak()
  
  
  [*Институт * #it.named().Институт #linebreak()]
  
  [*Кафедра * #it.named().Кафедра]
  
  linebreak()
  linebreak()
  
  [*#it.named().Практика*]

  linebreak()
  linebreak()

  [
    *по дисциплине*

    *#it.named().Дисциплина*
  ]
  
  v(60pt)
  
  grid(columns: (65%, 35%), align:(left, center), stroke: none, inset: (y: 3pt),
  grid.cell(rowspan: 2, [Студент группы #it.named().Группа]),
  underline[#it.named().Студент], [_(Ф.И.О. студента)_])

  v(36pt)
  
  grid(columns: (65%, 35%), align:(left, center), stroke: none, inset: (y: 3pt),
  grid.cell(rowspan: 2, [Принял #it.named().at("Должность", default: "")]),
  underline[#it.named().Преподаватель], [_(Ф.И.О. преподавателя)_])
  
  align(bottom, [Москва #datetime.today().year()])
}