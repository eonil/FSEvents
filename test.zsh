#!/bin/env zsh

swift build
exit 0

# I don't know why but "xcodebuild" doesn't work here right now.
# This is weired because "xcodebuild" works with another project.
# It seems this issue is related to project location as demo project
# is inside of a package.
# Anyway, I just disabled "xcodebuild" 
# until I figure out how to make it work.
DEMO=EonilFSEventsDemoGUI
cd $DEMO
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Debug
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Release

