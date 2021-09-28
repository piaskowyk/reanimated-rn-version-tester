tar zxvf react-native-reanimated*

rm -rf ./rn66/node_modules/react-native-reanimated/*
rm -rf ./rn65/node_modules/react-native-reanimated/*
rm -rf ./rn64/node_modules/react-native-reanimated/*
rm -rf ./rn63/node_modules/react-native-reanimated/*
rm -rf ./rn62/node_modules/react-native-reanimated/*

cp -r ./package/* ./rn66/node_modules/react-native-reanimated/
cp -r ./package/* ./rn65/node_modules/react-native-reanimated/
cp -r ./package/* ./rn64/node_modules/react-native-reanimated/
cp -r ./package/* ./rn63/node_modules/react-native-reanimated/
cp -r ./package/* ./rn62/node_modules/react-native-reanimated/

cd ./rn66/ios && pod install && cd ../..
cd ./rn65/ios && pod install && cd ../..
cd ./rn64/ios && pod install && cd ../..
cd ./rn63/ios && pod install && cd ../..
cd ./rn62/ios && pod install && cd ../..

rm -rf package