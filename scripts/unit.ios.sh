#!/bin/bash -e

xcodebuild -version
set -o pipefail && xcodebuild -project detox/ios/Detox.xcodeproj -scheme Detox -configuration Debug -sdk iphonesimulator build-for-testing
set -o pipefail && xcodebuild -project detox/ios/Detox.xcodeproj -scheme Detox -configuration Debug -sdk iphonesimulator test-without-building -destination 'platform=iOS Simulator,name=iPhone 7 Plus'
