## Submitting Pull Requests
All images must come from [Heroes Data Parser](https://github.com/HeroesToolChest/HeroesDataParser) using the
following command.
```
'Path/To/Game' --extract-data all --extract-images all
```
Or the following command if data and gamestrings are being extracted as well for [Heroes Data](https://github.com/HeroesToolChest/heroes-data/blob/master/CONTRIBUTING.md)
```
'Path/To/Game' --extract-data all --extract-images all --localization all --localized-text
```

The `.hdp.json` is **required** with the pull request with the following format
```
{
  "hdp": "x.x.x",
}
```
`x.x.x` is the hdp version that was used.
