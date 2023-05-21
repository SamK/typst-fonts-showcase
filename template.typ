// vim: tabstop=2 softtabstop=2 shiftwidth=2

#let template(title, pangram) = {

  set page(numbering: "1/1")
  set text(fallback: false)

  let list-fonts() = {
    let fonts = ()
    let lines = read("fonts.txt").split("\n")
    for this-line in lines {
      let clean-line = this-line.trim()
      if clean-line != "" {
        fonts.push(clean-line)
      }
    }
    fonts
  }

  let font-box(font_name) = {
      heading(numbering: "1. ")[
        #text(font: font_name, font_name)
        #text(size: .8em, weight: "regular", [(#font_name)])
      ]
      set text(font: font_name)
      pangram
  }

  align(center, text(17pt, title))


  let all-fonts = list-fonts()

  [This document shows all the #all-fonts.len() fonts Typst found on your system.]

  outline()

  for this-font in all-fonts {
    font-box(this-font)
  }
}
