#!/usr/bin/env bash

mkdir imgs
pdftoppm -png $1 imgs/$2
