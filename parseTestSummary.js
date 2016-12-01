'use strict';

const fs = require('fs');

const data = fs.readFileSync(process.argv[2], 'utf8');
const json = JSON.parse(data);

let totalTests = 0;
let totalPassingTests = 0;
const tests = [];

json.TestableSummaries.forEach(bundleSummary => {
    const parseSummary = summary => {

        if (summary.Subtests) {
            summary.Subtests.forEach(subtest => parseSummary(subtest));
        }

        if (summary.TestObjectClass === 'IDESchemeActionTestSummary') {
            totalTests++;
            if (summary.TestStatus === 'Success') {
                totalPassingTests++;
            }

            console.log(`${summary.TestStatus} : ${summary.TestIdentifier}`);

            tests.push({
                name: summary.TestIdentifier,
                status: summary.TestStatus
            });
        }
    };

    bundleSummary.Tests.forEach(summary => parseSummary(summary));
});

const passingTests = tests.filter(t => t.status === 'Success');
const failingTests = tests.filter(t => t.status === 'Failure');

console.log(`${passingTests.length} passed, ${failingTests.length} failed`);
