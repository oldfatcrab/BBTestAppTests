#!/usr/bin/env bash

rm -fr resultBundle
xcodebuild test-without-building -destination 'platform=iOS Simulator,name=iPhone 6,OS=10.1' -xctestrun ./dd/Build/Intermediates/CodeCoverage/Products/BBTestAppTests_iphonesimulator10.1-x86_64.xctestrun -resultBundlePath resultBundle -derivedDataPath dd -enableCodeCoverage YES
find resultBundle -name '*_TestSummaries.plist' -print0 | xargs -0 -I{} plutil -convert json -o {}.json {}
node parseTestSummary.js resultBundle/1_Test/action_TestSummaries.plist.json
