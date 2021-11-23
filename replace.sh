rm -rf package
tar zxvf react-native-reanimated*

default_versions="67rc2 66 65 64 63 62"

function replace() {
    echo $1
    rm -rf rn$1/node_modules/react-native-reanimated/*
    cp -R package/* rn$1/node_modules/react-native-reanimated
    cd rn$1/ios && pod install && cd ../../
}

if [[ $# -ge 1 ]]; then
    versions=$@
else
    versions=$default_versions
fi

for version in $versions
do
    replace $version
done

rm -fr package
