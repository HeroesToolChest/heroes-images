# Heroes Images
This repo contain the Heroes of the Storm image files that are extracted from [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser). The data files are stored in the [Heroes Data](https://github.com/HeroesToolChest/heroes-data) repo.

All static images are in png format while the animated images are in gif format. Due to the quality limitations of gifs, the texture files used for the creation of the gifs are also extracted in png format. Information about creating animations can be found in the Heroes Data Parser [wiki](https://github.com/koliva8245/HeroesToolChest/wiki/Animated-Images)

  
## Heroes Data Parser Extraction
The following command was used:
```
'Path/To/Game' --extract-data all --extract-images all --localization all --localized-text
```
Then the following command was used to convert the gamestring files to json:
```
localized-json 'Path/To/gamestring-directory'
```
