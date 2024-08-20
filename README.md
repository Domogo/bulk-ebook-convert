# bulk-ebook-convert

Helpful utility function to convert ebooks from any format to AZW3 all in one go.

The script takes in two optional arguments:

1. The source directory containing the ebooks to convert.
2. The destination directory where the converted ebooks will be stored.

If no arguments are provided, the script will use the default source (`DEFAULT_SOURCE_DIR`) and destination (`DEFAULT_DEST_DIR`) directories.

### Usage

```bash
./convert-all.sh [source_dir] [destination_dir]

./convert-all.sh [source_dir]

./convert-all.sh

bash convert-all
```

### Requirements

- calibre (ebook-convert)
- bash
- find

### Install calibre

```bash
brew install --cask calibre
```

or download from [calibre](https://calibre-ebook.com/)
