# The [radicle.xyz](https://radicle.xyz) website

This repository is where the source code for [radicle.xyz](https://radicle.xyz)
has been stored.

# Contribution Guide

### Index

- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Making Changes](#making-changes)
- [Building](#building)
- [Important Information](#important-information)

## Getting Started

It is recommended that you utilise Python's http server to serve this website
on your `localhost`.

Follow [this guide](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#running_a_simple_local_http_server)
to set up Python's http server on your computer.

- The website is to be served from the `docs/` directory.
- `index.html` will serve as the entry point.

Run the following commands to start the server and serve the website on your `locahost`:

```bash
# Assuming you are already in the project directory
cd docs

# For Python version 3.X
# Assuming python executable is globally available
python -m http.server

# For Python version 2.X
# Assuming python executable is globally available
python -m SimpleHTTPServer
```

## Dependencies

The Website utilises [Mustache](https://github.com/janl/mustache.js#mustachejs---logic-less-mustache-templates-with-javascript)

You will need to install the same using the following command (A Global Installation):

```bash
npm install -g mustache
```

or using

```bash
make dependencies
```

## Making Changes

- You are **NOT** supposed to directly change the `.html` files.
- Instead, make edits in corresponding `.html.mustache`
  file present inside `pages/` directory.
- You can directly change a `stylesheet`. Stylesheets are present in `/docs/styles/`.
- `partials/` directory contains the HTML that is common across all the pages.
  Like: Header, Footer, etc.

## Building

After making the desired changes to `.html.mustache`, you will need to build the `.html`
so that, they can reflect the changes that you have made.

Run the following command(s) while in **root directory of the PROJECT**:

```bash
make
```

- Building Process requires [`mustache` to be installed](#dependencies).
- Each `.html.mustache` file in the `pages/` directory will result in a `.html` file in
  `docs/` directory.

## Important Information

### Conversion of GIF to mp4

The moving images are GIF(s) that have been converted to mp4(s) to keep
the size of the page down.

- [ffmpeg](https://ffmpeg.org/) has been used to make this conversion.

```bash
ffmpeg -i file-name.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -b:v 500k file-name.mp4
```

# Legal Information

Copyright © 2019-2020 The Radicle Foundation <hello@radicle.foundation>
