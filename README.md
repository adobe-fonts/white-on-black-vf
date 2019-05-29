# White On Black VF

*White On Black VF* is a special-purpose Variable Font that is intended to exemplify a serious rendering issue when a white glyph is on a black background. The weight axis further demonstrates that overlap removal is not a viable solution because the topology changes.

The only functional glyph is for U+328E &#x328E;, but in reversed (white on black) form. An actual example of the reversed (white on black) form is [Adobe-Japan1-7](https://github.com/adobe-type-tools/Adobe-Japan1/) CID+10758. The Adobe-Japan1-7 Character Collection includes over 800 such glyphs.

## Building the font from source

### Requirements

To build the Variable Font from source, you need to have installed the [Adobe Font Development Kit for OpenType](https://github.com/adobe-type-tools/afdko/) (AFDKO) tools, along with [fontmake](https://github.com/googlefonts/fontmake) to produce the TTF. The AFDKO tools are widely used for font development today, and are part of most font editor apps.

### Building the font

In this repository, all necessary files are in place for building the Variable Font, and the *build.sh* file can simply be executed.

## Getting Involved

Send suggestions for changes to the White On Black VF project maintainer, [Dr. Ken Lunde](mailto:lunde@adobe.com?subject=[GitHub]%20White%20On%20Black%20VF), for consideration.
