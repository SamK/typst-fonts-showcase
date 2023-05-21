# Typst fonts

A Typst template that showcases all the fonts installed on your system.

![Screenshot](/assets/screenshot.jpg)

## Usage

The shell script [build.sh](build.sh) file generates the PDF file.

```
./build.sh
```

This script uses the Typst Docker image.
Feel free to edit this file to suit your needs.
For example, remove the alias if you are not using Docker.

## Limitations

Typst does not warn when the font cannot be rendered properly.
That's the reason you might see these "tofus" all around (the square symbols).
[Source](https://typst.app/docs/reference/text/text/#parameters-fallback).
