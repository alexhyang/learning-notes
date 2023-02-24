#!/bin/bash

marco () {
  echo "$(pwd)" > ~/tmp/marcod
}

polo () {
  cd "$(cat ~/tmp/marcod)"
}

marco2 () {
  pushd $(pwd)
}

polo2 () {
  popd
}
