rm -rf package
tar zxvf react-native-reanimated*

default_versions=("67rc2" "66" "65" "64" "63" "62")

if [[ $# -ge 1 ]]; then
    for version in $@
    do
        rm -rfv ./rn${version}/node_modules/react-native-reanimated/*
        cp -Rv ./package/ ./rn${version}/node_modules/react-native-reanimated/
        cd ./rn${version}/ios && pod install && cd ../../
    done
else
    for version in default_versions
    do
        rm -rfv ./rn${version}/node_modules/react-native-reanimated/*
        cp -Rv ./package/ ./rn${version}/node_modules/react-native-reanimated/
        cd ./rn${version}/ios && pod install && cd ../../
    done
fi

rm -fr package
