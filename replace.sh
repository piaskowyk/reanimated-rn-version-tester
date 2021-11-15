rm -rf package
tar zxvf react-native-reanimated*

default_versions="67rc2 66 65 64 63 62"

if [[ $# -ge 1 ]]; then
    for version in $@
    do
    echo $version
        rm -rf rn${version}/node_modules/react-native-reanimated/*
        cp -R package/* rn${version}/node_modules/react-native-reanimated
        cd rn${version}/ios && pod install && cd ../../
    done
else
    for version in ${default_versions}
    do
        echo $version
        rm -rf rn${version}/node_modules/react-native-reanimated/*
        cp -R package/* rn${version}/node_modules/react-native-reanimated
        cd rn${version}/ios && pod install && cd ../../
    done
fi

rm -fr package
