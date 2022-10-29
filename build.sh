#!/bin/sh

echo ">> Building contract"

near-sdk-js build src/greeting.ts build/greeting.wasm
