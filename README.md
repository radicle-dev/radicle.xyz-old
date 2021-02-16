# The [radicle.xyz](https://radicle.xyz) website.

## Build

Build with the `make` command.

Building requires `mustache`, which you can install with `make dependencies` or
`npm install -g mustache`.

Each file in `pages/` results in an output `.html` in `docs/`.
The `partials/` folder includes things like headers, footers etc.

## Edits

Only edit the `.html.mustache` pages, never the `.html` files in `docs/`. For the css you can edit `/docs/styles.css`.

## Gifs -> mp4

The moving images are gifs that we've converted to mp4's to keep the size of the page down, that's done by using [ffmpeg](https://ffmpeg.org/).

`ffmpeg -i file-name.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -b:v 500k file-name.mp4`

Copyright © 2019-2020 The Radicle Foundation <hello@radicle.foundation>
