#!/bin/sh
set -eu

main() {
  cd src/browser/media

  convert -background transparent favicon.svg -define icon:auto-resize favicon.ico
  convert -background transparent -resize 192x192 favicon.svg pwa-icon-192.png
  convert -background transparent -resize 512x512 favicon.svg pwa-icon-512.png
}

main "$@"
