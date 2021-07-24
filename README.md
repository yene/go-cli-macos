#  Go CLI inside macOS app

Example on how to call an embedded Go binary, which prints a JSON.
The JSON struct is generated for Swift with https://app.quicktype.io


## Getting Started
Some of these steps may already be done

* Run the Go binary and convert the JSON output to Swift struct
* Compile Go binary and add it to the Xcode project
* Make sure the Go binary is part of the target (under Copy bundle resources)
* Sign Go Binary with a run script phase, or manually
```
/usr/bin/codesign -f -s "${CODE_SIGN_IDENTITY}" -o runtime -v ${BUILT_PRODUCTS_DIR}/${CONTENTS_FOLDER_PATH}/Resources/BINARY_NAME
```
* List identities with `security find-identity -v`
* upx binary for smaller size

## useful environment variables
For during run script phase:

* $CODE_SIGN_IDENTITY
* $PROJECT_DIR
* $INFOPLIST_PATH
* $TARGET_BUILD_DIR (full path to build dir)
* $PROJECT_DIR/$INFOPLIST_PATH (full path to info plist)
* $TARGET_BUILD_DIR/$INFOPLIST_PATH (full path to info plist during build)


## Links
* https://artyom.dev/notarizing-go-binaries-for-macos.html





