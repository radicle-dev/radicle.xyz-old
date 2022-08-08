# The [radicle.xyz](https://radicle.xyz) website

This is the repository of the [radicle.xyz](https://radicle.xyz) website.

# Contribution Guide

### Index

- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Making Changes](#making-changes)
- [Building](#building)
- [Important Information](#important-information)

## Getting Started

Run the following command to start the server:

```bash
npx http-server docs -e html
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

⚠️ Do **NOT** directly change the `.html` files. You will lose your work!

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
- In order for the `make` command to build a file, the file has to be added to the `Makefile`

## Important Information

### Conversion of GIF from mp4

The moving images are GIF(s) that have been converted from mp4(s) to keep
the size of the page down.

- [ffmpeg](https://ffmpeg.org/) has been used to make this conversion.

```bash
ffmpeg -i file-name.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -b:v 500k file-name.mp4
```

# Legal Information

Copyright © 2019-2022 The Radicle Foundation <hello@radicle.foundation>
