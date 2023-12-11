#!/usr/bin/env bash

rm ./client/example-dialect-support/server/jar/dialect-example.jar
rm ./client/dist/extension.js ./client/dist/extension.js.map
rm ./vsix/dialect-example.vsix

echo "STEP 1: Build jar file with a server part"
mvn -f server/dialect-example/ clean package

echo "STEP 2: Copy jar file to the client package folder"
cp ./server/dialect-example/target/dialect-example.jar ./client/example-dialect-support/server/jar

echo "STEP 3: Install node modules"
npm --prefix ./client/example-dialect-support/ ci

echo "STEP 4: Build and Package VSCode extension"
npm --prefix ./client/example-dialect-support/ run package -- -o $PWD/vsix/dialect-example.vsix
