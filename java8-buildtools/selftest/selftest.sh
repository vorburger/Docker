#!/bin/bash
set -e
set -x

rm *.class
javac HelloWorld.java
java HelloWorld

mvn --version

ant -version

# TODO How to assert it printed "hello, world" in a bash shell script?
