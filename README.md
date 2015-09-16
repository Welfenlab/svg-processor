# more-markdown / svg-processor

A plugin for `more-markdown` that renders graphs in svg notation.

# Installation

You first need a [more-markdown](https://github.com/Welfenlab/more-markdown) setup.
Then you can install it via:

```
npm install @more-markdown/svg-processor
```

# Usage

```
var moreMarkdown = require('more-markdown');
var svgProcessor = require('@more-markdown/svg-processor');

// create a processor that writes the final html
// to the element with the id 'output'
var proc = moreMarkdown.create('output', processors: [svgProcessor]);

proc.render("```svg" +
"}"+
"```");
```
