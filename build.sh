#!/usr/bin/env bash
nix build
cp --recursive --dereference --no-target-directory --force --no-preserve=mode result docs
