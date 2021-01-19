[![Build Status](https://travis-ci.org/mikessh/homebrew-repseq.svg?branch=master)](https://travis-ci.org/mikessh/homebrew-repseq)

### [Homebrew](http://brew.sh) repository for immune repertoire sequencing data analysis packages.
##Edited by @rodrigarc due to java inconsistencies in the original code
```{bash}
brew update
```

Make sure you have Java 1.8 installed. On MacOS you can use

```{bash}
brew install --cask homebrew/cask-versions/adoptopenjdk8
```

We'll also need some dependencies from brewsci/bio:
```{bash}
brew tap homebrew/science (deprecated)
brew tap brewsci/bio
```

Installing RepSeq software bundle:

```{bash}
brew tap rodrigarc/homebrew-repseq
brew install migec
brew install vdjtools
brew install vdjmatch

# The following come separately for MacOS and Linux (linuxbrew)
brew install igblast-linux
brew install migmap-linux

brew install igblast-macos
brew install migmap-macos
```

This will install the software and make command line aliases: ``migec``, ``vdjtools``, etc.
To allocate more memory for Java (in case of Out Of Memory Errors), append ``-Xmx?`` option, e.g. ``migec -Xmx40G ...``.

N.B. If the script complains about BLAST already installed - use ``brew unlink blast``
