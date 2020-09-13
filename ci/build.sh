#!/usr/bin/env bash

set -euxo pipefail

../build.sh

npm test
npm run prepare-deployment -- --commit="$TRAVIS_COMMIT" --tag="$TRAVIS_TAG" --branch="$TRAVIS_BRANCH"
npm pack
