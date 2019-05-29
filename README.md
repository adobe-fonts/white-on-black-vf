# White On Black VF versus Black On White VF

*White On Black VF versus Black On White VF* is a pair of special-purpose Variable Fonts that are intended to exemplify a serious rendering issue when a white glyph is on a black background, while a black glyph on a white background has no issues. The inner contours that represent CJK Unified Ideograph U+91D1 &#x91D1; (meaning *gold* or *metal*) are identical other than winding direction. The weight axis further demonstrates that overlap removal is not a viable solution because the topology changes.

The only functional glyph in both Variable Fonts is for U+328E &#x328E; (an annotated form of &#x91D1;, which serves as an abbreviated form of &#x91D1;&#x66DC;&#x65E5; that means *Friday*, a day of the week), but in reversed (white on black) form in the *White on Black* Variable Font in order to demonstrate this rendering issue. A real-life example of the reversed (white on black) form is [Adobe-Japan1-7](https://github.com/adobe-type-tools/Adobe-Japan1/) CID+10758. The Adobe-Japan1-7 Character Collection includes over 800 such glyphs, and there are hundreds of OpenType/CFF Japanese fonts that include such glyphs.

## Building the fonts from source

### Requirements

To build the Variable Fonts from source, you need to have installed the [Adobe Font Development Kit for OpenType](https://github.com/adobe-type-tools/afdko/) (AFDKO) tools, along with [fontmake](https://github.com/googlefonts/fontmake) to produce the TTF. The AFDKO tools are widely used for font development today, and are part of most font editor apps.

### Building the fonts

In this repository, all necessary files are in place for building the Variable Fonts, and the *build.sh* file can simply be executed.

## Getting Involved

Send suggestions for changes to the &#x201C;White On Black VF versus Black On White VF&#x201D; project maintainer, [Dr. Ken Lunde](mailto:lunde@adobe.com?subject=[GitHub]%20White%20On%20Black%20VF%20versus%20Black%20On%20White), for consideration.
