# Heroes Images
[![Release](https://img.shields.io/github/release/HeroesToolChest/heroes-images.svg)](https://github.com/HeroesToolChest/heroes-images/releases/latest)

This repository contains the Heroes of the Storm image files extracted with [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser) (HDP). It holds the images from every patch, so they are not tied to any one patch. The parsed data files are stored in the [Heroes Data](https://github.com/HeroesToolChest/heroes-data2) repository.

Starting with commit [e0b40fe](https://github.com/HeroesToolChest/heroes-images/commit/e0b40fe716c724d51c64adfee6a493e12c1c39be), all images are extracted from patch `2.55.16.97039` onward using HDP v5.

For images extracted earlier with HDP v4, see the [hdp4-images branch](https://github.com/HeroesToolChest/heroes-images/tree/hdp4-images).

Static images are `.png` files and animated images are `.apng` files.

## Folder Layout
All images are in the `heroesimages` folder, grouped by type:

- `abilitytalents`
- `announcers`
- `bundles`
- `emoticons`
- `heroportraits`
- `loadingscreens`
- `mapobjectives`
- `matchawards`
- `replaypreviews`
- `rewardportraits`
- `sprays`
- `typedescriptions`
- `unitportraits`
- `voicelines`

## Releases
Each release is tagged with a game patch version (for example `v2.57.0.98217_ptr`) and contains only new or changed images. These are mostly images added or changed in that patch, but a release can also include images missed in earlier releases or images added because of a change in HDP.

## Image Extraction
All images except reward portraits were extracted with HDP's `-e` (`--extractor`) option:
```
heroesdataparser <storage-type> -e all:i
```

Reward portraits were extracted with the following HDP commands:

1. [`portrait extract-auto`](https://github.com/HeroesToolChest/HeroesDataParser#portrait-extract-auto) extracts most portraits automatically.
2. For any portraits it missed:
   1. [`portrait battlenet-cache`](https://github.com/HeroesToolChest/HeroesDataParser#portrait-battlenet-cache) copies the texture sheets from the Battle.net cache.
   2. [`portrait extract`](https://github.com/HeroesToolChest/HeroesDataParser#portrait-extract) extracts portraits from a selected texture sheet.

[`portrait info`](https://github.com/HeroesToolChest/HeroesDataParser#portrait-info) was also used.

See [Reward Portrait Extraction](https://github.com/HeroesToolChest/HeroesDataParser/wiki/Reward-Portrait-Extraction) for the full steps.

## Disclaimer
Heroes of the Storm and all images in this repository are the property of Blizzard Entertainment, Inc. This repository is not affiliated with or endorsed by Blizzard Entertainment.
