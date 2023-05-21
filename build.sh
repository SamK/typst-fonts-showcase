#!/bin/sh
alias typst='docker run -w /mnt -v /usr/share/fonts:/usr/share/fonts -v $(pwd):/mnt -it ghcr.io/typst/typst typst'
typst fonts > fonts.txt
typst compile fonts-latin.typ
