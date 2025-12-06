rm -rf ./release
mkdir ./release

# Copy the essential files
cp -r ./extension-src/* ./release

# Build Angular
ng build devtools-panel
ng build on-install

mkdir ./release/devtools-panel
mkdir ./release/on-install

cp dist/devtools-panel/browser/* ./release/devtools-panel
cp dist/on-install/browser/* ./release/on-install
