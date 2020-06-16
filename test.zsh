#!/usr/bin/env zsh

rm -rf .build build

swift build
# I don't know why, but "xcodebuild" doesn't work
# without explicit setting of "SYMROOT".
# It seems Xcode have some issues.
OPTS=SYMROOT=`pwd`/build

DEMO=EonilFSEventsDemoGUI
cd $DEMO
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Debug $OPTS
xcodebuild -project $DEMO.xcodeproj -target $DEMO -configuration Release $OPTS
cd ..

# I can't figure out how to build without provisioning profile for Mac Catalyst.
# Therefore, test has been disabled. You can perform test manually by opening the project.
#cd BuildTest
#xcodebuild -project BuildTest.xcodeproj -target MacOSBuildTest -configuration Debug $OPTS
#xcodebuild -project BuildTest.xcodeproj -target MacOSBuildTest -configuration Release $OPTS
#xcodebuild -project BuildTest.xcodeproj -target MacCatalystBuildTest -configuration Debug $OPTS
#xcodebuild -project BuildTest.xcodeproj -target MacCatalystBuildTest -configuration Release $OPTS
#cd ..
