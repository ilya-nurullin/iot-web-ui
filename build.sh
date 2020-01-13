#!/bin/bash
echo "Start building"
cd ./dashboard
npm ci
npm run build
cd ..
echo "Done building"