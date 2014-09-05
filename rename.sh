#!/bin/bash

PATH="/bin:/usr/bin"

if [ -z ${1} ]; then
    echo "Usage: $0 <new target name>"
    exit 1
fi

perl -pi -e "s/SwiftApp/"$1"/g" SwiftApp.xcodeproj/project.pbxproj
mv SwiftApp ${1}
mv SwiftApp.xcodeproj ${1}.xcodeproj
open ${1}.xcodeproj
