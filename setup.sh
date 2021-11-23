default_versions="67rc2 66 65 64 63 62"

for version in ${default_versions}
do
    echo "Setting up rn${version}"
    cd rn${version} && yarn && cd ..
done
