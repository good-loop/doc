#!/bin/bash
ssh winterwell@dns-02.good-loop.com bash <<EOF 
/home/winterwell/config/build-scripts/builder.sh \
BUILD_TYPE="CI" \
PROJECT_NAME="doc" \
BRANCH_NAME="master" \
NAME_OF_SERVICE="doc" \
GIT_REPO_URL="github.com:good-loop/doc" \
PROJECT_ROOT_ON_SERVER="/home/winterwell/doc" \
PROJECT_USES_BOB="no" \
PROJECT_USES_NPM="no" \
PROJECT_USES_WEBPACK="no" \
PROJECT_USES_JERBIL="yes" \
PROJECT_USES_WWAPPBASE_SYMLINK="yes"
EOF