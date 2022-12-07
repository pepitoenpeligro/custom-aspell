# Spellcheck

Allows syntax checking with aspellcheck

Allows to parameterize:
- Language, with `ASPELL_LANG`
- Mode, with `ASPELL_MODE`
- Dictionary file, with `ASPELL_DICT`


## Build Docker Image (optional)

```sh
docker build -t custom-aspell .
```

### Usage

```sh
# Filling dictionary
echo 'wtf' > ./dictionary_avoided_words_en.txt

echo 'this is what wtf' | docker run -e ASPELL_LANG=en -e ASPELL_MODE=tex -e ASPELL_DICT=dictionary_avoided_words_en.txt -i -v `pwd`:/home/aspell custom-aspell
```


### Supported Languages

| **Language ISO 639-1:2002** |     **Language**     |
|:---------------------------:|:--------------------:|
|              en             |        English       |
|              de             |        German        |
|              ca             |        Catalan       |
|              eu             |        Euskera       |
|              bg             |       Bulgarian      |
|              af             |       Afrikaans      |
|              el             |         Greek        |
|              da             |        Danish        |
|              cs             |         Czech        |
|              fr             |        French        |
|              he             |        Hebrew        |
|              hi             |         Hindi        |
|              hr             |       Croatian       |
|              hu             |       Hungarian      |
|              hy             |       Armenian       |
|              id             |      Indonesian      |
|              is             |       Icelandic      |
|              it             |        Italian       |
|              ku             |        Kurdish       |
|              lv             |        Latvian       |
|              nl             |         Dutch        |
|              no             |       Norwegian      |
|              pl             |        Polish        |
|              pt             |      Portuguese      |
|            pt-br            | Brazilian Portuguese |
|            pt-pt            |  European Portuguese |
|              ro             |       Romanian       |
|              ru             |        Russian       |
|              sk             |        Slovak        |
|              sl             |       Slovenian      |
|              sv             |        Swedish       |
|              uk             |       Ukrainian      |
|              es             |        Spanish       |