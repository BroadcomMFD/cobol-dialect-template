rm ./client/example-dialect-support/server/*.jar
rm ./client/example-dialect-support/*.vsix
rm ./out/*

echo "STEP 1: Build jar file with a server part"
mvn -f server/dialect-example/ clean package

echo "STEP 2: Copy jar file to the client package folder"
cp ./server/dialect-example/target/dialect-example.jar ./client/example-dialect-support/server/

npm -prefix client/example-dialect-support/ i @code4z/cobol-dialect-api  --registry https://packages.broadcom.com/artifactory/brightside/

echo "STEP 3: Build client side"
npm --prefix ./client/example-dialect-support/ ci

echo "STEP 4: Package VSCode extension"
npm --prefix ./client/example-dialect-support/ run package

mkdir out
mv ./client/example-dialect-support/*.vsix ./out/
