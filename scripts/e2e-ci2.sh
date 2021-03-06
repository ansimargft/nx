#!/usr/bin/env bash

./scripts/link.sh

rm -rf tmp
mkdir -p tmp/angular
mkdir -p tmp/nx

export SELECTED_CLI=$1
jest --maxWorkers=1 ./build/e2e/help.test.js &&
jest --maxWorkers=1 ./build/e2e/jest.test.js &&
jest --maxWorkers=1 ./build/e2e/karma.test.js &&
jest --maxWorkers=1 ./build/e2e/list.test.js &&
jest --maxWorkers=1 ./build/e2e/migrate.test.js &&
jest --maxWorkers=1 ./build/e2e/move.angular.test.js &&
jest --maxWorkers=1 ./build/e2e/move.workspace.test.js &&
jest --maxWorkers=1 ./build/e2e/next.test.js &&
jest --maxWorkers=1 ./build/e2e/nx-plugin.test.js &&
jest --maxWorkers=1 ./build/e2e/print-affected.test.js &&
jest --maxWorkers=1 ./build/e2e/delegate-to-cli.test.js &&
jest --maxWorkers=1 ./build/e2e/downgrade-module.test.js
