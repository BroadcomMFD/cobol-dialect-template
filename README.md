# COBOL Language Support Dialect Extension Template

[COBOL Language Support](https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol) enhances the COBOL programming experience on Visual Studio Code. The extension leverages the language server protocol to provide autocomplete, syntax highlighting and coloring, and diagnostic features for COBOL code and copybooks. 

Many companies have their own COBOL preprocessors which complement or modify standard IBM enterprise COBOL with custom statements and keywords. In our documentation, we refer to these preprocessors as "dialects". Support for COBOL dialects is enabled by installing add-on extensions. Some dialect extensions are available on the VS Code marketplace, but you can also make your own custom dialect extensions. This repository provides a template for a custom COBOL Language Support dialect extension.

## Prerequisites

The backend part of COBOL Language Support is based on Java and the client side is a TypeScript-based application.
To build a dialect add-on extension you need:

* Java version 8 or higher
* maven
* npm
* (Windows only) PowerShell

## Build VSCode Extension With Dialect Add-On Example

Clone repository and run following script from the root repository folder:

```bash
sh build.sh
```

This script will build server and client parts of the extension and pack them into the **`VSCode`** Extension (`.vsix` file)

## Install Dialect Add-On Example

If build was successfull the Dialect Add-On Example Extension (`.vsix` file) will be situated in the `vsix` folder.
To install it into the **`VSCode`** do following steps:

1. Open **`VSCode`**
1. Open `Extension` tab
1. Open `...` menu and choose "install from VSIX..."
1. Choose `.vsix` file with Dialect Add-On Example

Now you example dialect is ready to use.
You can find more information and a sample code in the details to the installed "COBOL Dialect Support Example" extension
