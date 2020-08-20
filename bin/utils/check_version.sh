#!/bin/bash

PACKAGE_NAME=$(grep '"name"' package.json | cut -d '"' -f4 | tr -d '[[:space:]]')
NPM_PACKAGE_VERSION=$(npm view $PACKAGE_NAME version)
PACKAGE_VERSION=$(grep '"version"' package.json | cut -d '"' -f4 | tr -d '[[:space:]]')
echo $PACKAGE_NAME
echo $NPM_PACKAGE_VERSION
echo $PACKAGE_VERSION
if [ "${NPM_PACKAGE_VERSION}" == "${PACKAGE_VERSION}" ]; then
  echo "Versions are the same"
else
  echo "Versions are not the same"
fi