// vim: tabstop=2 softtabstop=2 shiftwidth=2

#import "template.typ": template

#let pangram = [
  #set block(above: 0.5em, below: 0.5em)
  #let pangram-text = "The quick brown fox jumps over the lazy dog"

  abcdefghijklmnopqrstuvwxyz

  ABCDEFGHIJKLMNOPQRSTUVWXYZ

  0123456789.:,;(\*!?'-"\_\\)

  àâä
  éèêë
  ïĩñ
  öõ

  - #pangram-text
  - #strong(pangram-text)
  - #emph(pangram-text)
]

#template(
  [All the fonts],
  pangram
)
