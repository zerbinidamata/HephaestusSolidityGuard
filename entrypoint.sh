#!/bin/bash
set -e

cp -r /github/workspace/* .

slither .

solhint .

