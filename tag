#!/bin/sh

# Get current version and update it
TYPE=$1
./semver project $TYPE

# Tag the repo with updated version
VERSION=$(cat VERSION)
git add VERSION
git tag v$VERSION

echo "New tag created: v$VERSION"
