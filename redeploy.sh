#!/bin/bash

if [ -d "artifacts" ]; then
    rm -r artifacts
fi

if [ -f "Context/CrowdFunding.json" ]; then
    rm -r Context/CrowdFunding.json
fi

npx hardhat run --network localhost scripts/deploy.js
mv artifacts/contracts/crowdfunding.sol/CrowdFunding.json Context/CrowdFunding.json