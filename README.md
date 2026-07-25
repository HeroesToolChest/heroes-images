# Heroes Images
[![Release](https://img.shields.io/github/release/HeroesToolChest/heroes-images.svg)](https://github.com/HeroesToolChest/heroes-images/releases/latest)

This repository contains the Heroes of the Storm image files extracted with [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser). The parsed data files are stored in the [Heroes Data](https://github.com/HeroesToolChest/heroes-data2) repository.

This repository contains all the images throughout every patch and as such the images are not specific to any patch.

Static images are in `png` format while the animated images are in `apng` format.

For images that were extracted from HDP `v4` and earlier, see the [hdp4-images branch](https://github.com/HeroesToolChest/heroes-images/tree/hdp4-images).

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

