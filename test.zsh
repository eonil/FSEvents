#!/bin/env zsh

swift build
exit 0

# Building Xcode project with package dependencies on command-line 
# doesn't work at this point. It seems Xcode have some issues here.
# Open this project with Xcode app and build it there. 
# It should work.
DEMO=EonilFSEventsDemoGUI
cd $DEMO
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Debug
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Release

