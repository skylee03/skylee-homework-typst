#let _shw-problem-counter = counter("_shw:problem-counter")

#let problem = (content) => {
  _shw-problem-counter.update(n => n + 1)
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    _shw-problem-counter.display("1."),
    content
  )
}

#let parts = (..args) => {
  enum(
    tight: false,
    numbering: "(a)",
    ..args
  )
}

#let solution = (content) => {
  grid(
    columns: (auto, 1fr),
    column-gutter: 4pt,
    box(stroke: (dash: "dashed", thickness: .5pt), outset: 4pt, [_Solution_]),
    line(length: 100%, stroke: (dash: "dashed", thickness: .5pt))
  )
  content
}

#let skylee-hw(
  institute: none,
  course: none,
  session: none,
  title: none,
  author: none,
  date: datetime.today(),
  doc
) = {
  set page(
    header: context [
      #if counter(page).get() != (1,) {
        set text(8pt)
        course
        h(1fr)
        institute
        line(length: 100%, stroke: .5pt)
      }
    ],
    footer: context [
      #set text(8pt)
      #counter(page).display(
        "1 of 1",
        both: true,
      )
    ],
  )
  set par(leading: 5pt, justify: true)
  set align(center)
  
  if institute != none {
    institute
    linebreak()
  }
  if course != none {
    course
    linebreak()
  }
  if session != none {
    session
    linebreak()
  }
  
  line(length: 100%, stroke: .5pt)
  strong(underline(title))
  linebreak()
  if author != none {
    author
  }
  h(1fr)
  if date != none {
    date.display("[day padding:none] [month repr:long] [year]")
  }
  line(length: 100%, stroke: .5pt)

  set align(start)
  doc
}
