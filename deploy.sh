#!/bin/sh

./build.sh

if [ $? -ne 0 ]; then
  echo ">> Error building contract"
  exit 1
fi

echo ">> Deploying contract"

# https://docs.near.org/tools/near-cli#near-dev-deploy
near dev-deploy --wasmFile build/greeting.wasm

# or with accountId (change to your accountId)
# near deploy --wasmFile build/greeting.wasm --accountId devahoy.testnet
