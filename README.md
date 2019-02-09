# Deep-Roo

wrangling kangaroo words

## Overview

a kangaroo word contains a subsequence of characters that form a different word with the same meaning as that kangaroo word - the idea being that a kangaroo carries a little kangaroo in its pouch.

> **a**b**no**r**mal**it**y** is a kangaroo word containing **anomaly**.

i want to discover kangaroo words, but rather than use a thesaurus, we can compute vector embeddings of words
using node2vec. by ranking valid word subsequences by their proximity to the containing word, approximate kangaroo words can be found. because word2vec embeddings can be used to infer analogous relationships, we might even be able to find classes of kangaroo-like words containing subsequences that fit particular analogies.

my plan is to train a word2vec model on wikipedia's data, and then use that model to rank vocabulary words' subsequences.

## Deep-Roo Docker

### build Deep-Roo

from this directory run:

    docker build -t deep_roo .

### run Deep-Roo

copy `config.example.sh` to `config.sh`:

    cp config.example.sh config.sh

in your `config.sh` file, replace the values of environment variables:

-   `CORPUS_DIR`: local path where your word2vec training corpus lives
-   -   either include your own corpus, or use wikipedia parser (TODO)
-   `MODEL_DIR`: local path where word2vec model will be written and persisted

source your config file:

    . config.sh

then spin up the container:

    docker-compose up -d

### Deep-Roo commands

TODO
