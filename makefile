# Makefile
.RECIPEPREFIX += 

.DEFAULT_GOAL := result

build:
    nix build --impure
clean:
    rm -rf result

.PHONY: build clean
