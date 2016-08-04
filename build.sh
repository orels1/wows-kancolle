echo "Copying japan"
cp -f ./japan/battleship/*/*.dds ./release/content/gameplay/japan/ship/battleship/textures
echo "Japan battleships copied"
cp -f ./japan/destroyer/*/*.dds ./release/content/gameplay/japan/ship/destroyer/textures
echo "Japan destroyers copied"
cp -f ./japan/cruiser/*/*.dds ./release/content/gameplay/japan/ship/cruiser/textures
echo "Japan cruiserss copied"
echo "Japan ships ready, copying common"
cp --parents -r -f ./common ./release/content/gameplay
echo "Copying xmls"
cp -f ./*.xml ./release
echo "All done!"
