#!/bin/env zsh

rm -rf .build build

swift build
# I don't know why, but "xcodebuild" doesn't work
# without explicit setting of "SYMROOT".
# It seems Xcode have some issues.
DEMO=EonilFSEventsDemoGUI
CONFIG=SYMROOT=`pwd`/build
cd $DEMO
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Debug $CONFIG
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Release $CONFIG
