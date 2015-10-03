FROM vorburger:scriptcraft-build
MAINTAINER Michael Vorburger <mike@vorburger.ch>

RUN cd ScriptCraft \
 && cp lib/canarymod*.jar target/canarymod.zip \
 && git checkout . \
 && git fetch origin pull/257/head:pr257_Blockly \
 && git checkout pr257_Blockly \
 && ant

