# Heroes Images
[![Build Status](https://dev.azure.com/kevinkoliva/Heroes%20of%20the%20Storm%20Projects/_apis/build/status/HeroesToolChest.heroes-images?branchName=master)](https://dev.azure.com/kevinkoliva/Heroes%20of%20the%20Storm%20Projects/_build/latest?definitionId=9&branchName=master) [![Release](https://img.shields.io/github/release/HeroesToolChest/heroes-images.svg)](https://github.com/HeroesToolChest/heroes-images/releases/latest)

This repo contain the Heroes of the Storm image files that are extracted from [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser). The data files are stored in the [Heroes Data](https://github.com/HeroesToolChest/heroes-data) repo.

This repo will contain all the images throughout every patch and as such the images are not specific to any patch.

All static images are in png format while the animated images are in gif format. Due to the quality limitations of gifs, the texture files used for the creation of the gifs are also extracted in png format. Information about creating animations can be found in the Heroes Data Parser [wiki](https://github.com/HeroesToolChest/HeroesDataParser/wiki/Animated-Images)

The heroesimages directory also contain a `.hdp.json` file which contains a `hdp` property that specifies the version of Heroes Data Parser that was used to extract the images.

## Releases
Releases will have have up to two zip files. A `_all` and sometimes a `_new`.

The `_all` will contain all the images.  
The `_new` will contain only the new or modified file(s) from the last release.

Releases will only happen when there are new or modified images.

The release version is simply the build version from Azure Pipelines `$(Date:yyyyMMdd).$(Rev:r)`.

## Heroes Data Parser Extraction
The following command was used (same for [Heroes Data](https://github.com/HeroesToolChest/heroes-data)):
```
'Path/To/Game' --extract-data all --extract-images all --localization all --localized-text
```
Then the following command was used to convert the gamestring files to json:
```
localized-json 'Path/To/gamestring-directory'
```

For reward portraits extraction was done through the portrait commands ([wiki](https://github.com/HeroesToolChest/HeroesDataParser/wiki/Portrait-Icon-Extraction))

