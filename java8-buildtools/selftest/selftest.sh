#!/bin/bash
set -e
set -x

javac HelloWorld.java
java HelloWorld

# TODO How to assert it printed "hello, world" in a bash shell script?
