#!/bin/bash

# Assign the filename
filename="./android/app/build.gradle"

# Take the search string
search="buildTypes"
dqt='"'
# Take the replace string
#replace="signingConfigs {  release {storeFile file(${dqt}../key.jks${dqt}) inside a double quoted string"
replace="signingConfigs{\n\t\trelease{\n\t\tstoreFile file(${dqt}../key.jks${dqt})\n\t\tstorePassword=${dqt}\$System.env.KEY_PASSWORD${dqt}\n\t\tkeyAlias=${dqt}xapp${dqt}\n\t\tkeyPassword=${dqt}\$System.env.ALIAS_PASSWORD${dqt}\n\t\t}\n\t}\n\n\t${search}"

if [[ $search != "" && $replace != "" ]]; then
sed -i "s#$search#$replace#" $filename
fi
