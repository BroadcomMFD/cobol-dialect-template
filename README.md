# COBOL Language Support Dialect Add-on Template

[COBOL Language Support](https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol) enhances the COBOL programming experience on Visual Studio Code. The extension leverages the language server protocol to provide autocomplete, syntax highlighting and coloring, and diagnostic features for COBOL code and copybooks. 

Many companies have their own COBOL preprocessors which complement or modify standard IBM enterprise COBOL with custom statements and keywords. In our documentation, we refer to these preprocessors as "dialects". Support for COBOL dialects is enabled by installing add-on extensions. Some dialect extensions are available on the VS Code marketplace, but you can also make your own custom dialect add-ons. This repository provides a template for a custom COBOL Language Support dialect add-on.

## Prerequisites

The backend part of COBOL Language Support is based on Java and the client side is a TypeScript-based application.
To build a dialect add-on extension you need:

* Java version 8 or higher
* maven
* npm
* (Windows only) PowerShell

## Build the VSCode Extension

To build your VS Code Extension, clone this repository and run the following script from the root repository folder:

```bash
sh build.sh
```

This script builds the server and client parts of the extension and packs them into a VS Code Extension (`.vsix` file)

## Install the VS Code Extension

If the build is successful, the dialect add-on Extension (`.vsix` file) is situated in the **/vsix** folder.
To install it on VS Code, do the following:

1. Open the **Extensions** tab
1. In the **...** menu, select **install from VSIX...**
1. Select the `.vsix` file with your dialect add-on.

Now your dialect add-on is ready to use.
You can find more information and a sample code in the details to the installed "COBOL Dialect Support Example" extension
