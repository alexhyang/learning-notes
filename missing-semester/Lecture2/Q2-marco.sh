#!/bin/bash

marco () {
  echo "$(pwd)" > ~/tmp/marcod
}

polo () {
  cd "$(cat ~/tmp/marcod)"
}


