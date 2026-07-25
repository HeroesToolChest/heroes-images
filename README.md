# Heroes Images
[![Release](https://img.shields.io/github/release/HeroesToolChest/heroes-images.svg)](https://github.com/HeroesToolChest/heroes-images/releases/latest)

This repository contains the Heroes of the Storm image files extracted with [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser). The parsed data files are stored in the [Heroes Data](https://github.com/HeroesToolChest/heroes-data2) repository.

This repository contains all the images throughout every patch and as such the images are not specific to any patch.

Starting with commit [e0b40fe](https://github.com/HeroesToolChest/heroes-images/commit/e0b40fe716c724d51c64adfee6a493e12c1c39be), all the images are extracted from `2.55.16.97039` and later (using HDP v5).

For images that were extracted earlier (using HDP v4), see the [hdp4-images branch](https://github.com/HeroesToolChest/heroes-images/tree/hdp4-images).

Static images are in `png` format while the animated images are in `apng` format.

## Releases
Each release contains only the new or modified images for a specific version.

## Image Extraction
The following option was used to extract all the images (except reward portraits):
```
-e all:i
```
To extract the reward portraits, the following commands were used:  
[portrait info](https://github.com/HeroesToolChest/HeroesDataParser#portrait-info)  
[portrait battlenet-cache](https://github.com/HeroesToolChest/HeroesDataParser#portrait-battlenet-cache)  
[portrait extract](https://github.com/HeroesToolChest/HeroesDataParser#portrait-extract)  
[portrait extract-auto](https://github.com/HeroesToolChest/HeroesDataParser/tree/develop-v5#portrait-extract-auto)

See [Reward Portrait Extraction](https://github.com/HeroesToolChest/HeroesDataParser/wiki/Reward-Portrait-Extraction) for more information.

