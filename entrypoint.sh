#!/bin/bash
set -e

cp -r /github/workspace/* .

solhint .

