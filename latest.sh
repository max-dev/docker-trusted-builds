#!/bin/bash

SCRIPT_HOME="$( cd "$( dirname "$0" )" && pwd )"

pushd $SCRIPT_HOME
git submodule update --remote
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch; git pull'
popd
