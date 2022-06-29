#!/bin/bash
set -e

echo "Setup > Decompiling"
bash decompile.sh

echo "Setup > Fixing src"
sed -i 's/lvt_5_1_/k/g' src/minecraft/net/minecraft/world/gen/structure/StructureMineshaftPieces.java

echo "Setup > Recompiling"
bash updatemd5.sh

echo "Setup > Removing mc src"
rm -rf src/minecraft

echo "Setup > Copying op src"
cp -rT op src/minecraft

echo "Setup > Done, should be OK"