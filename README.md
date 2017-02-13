[![Build Status](https://travis-ci.org/mikessh/homebrew-repseq.svg?branch=master)](https://travis-ci.org/mikessh/homebrew-repseq)

### [Homebrew](http://brew.sh) repository for immune repertoire sequencing data analysis packages.

```{bash}
brew update
```

Make sure you have Java 1.8 installed. On MacOS you can use

```{bash}
brew cask install java
```

We'll also need some dependencies from Homebrew/Science:

```{bash}
brew tap homebrew/science
```

Installing RepSeq software:

```{bash}
brew tap mikessh/repseq
brew install migec
brew install vdjtools
brew install vdjdb

# The following come separately for MacOS and Linux (linuxbrew)
brew install igblast-linux
brew install migmap-linux

brew install igblast-macos
brew install migmap-macos
```

