# Cobol LSP Extension Dialect Example

COBOL Language Support enhances the COBOL programming experience on your **`VSCode`** IDE. The extension leverages the language server protocol to provide autocomplete, syntax highlighting and coloring, and diagnostic features for COBOL code and copybooks.

Main COBOL Language Support Extension repository you can find [here](https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol)

Many companies have their own COBOL preprocessors which complement or modify standard IBM enterprise COBOL with custom statements and keywords. In our documentation, we refer to these preprocessors as "dialects".

Dialect add-ons are available to add support for specific language analysis in your COBOL files. Currently an add-on for the IDMS dialect is available on the Visual Studio Code Marketplace.

In this repository you can find an example of a Dialect add-on

## How to build Dialect Add-On Example

### Prerequisites

Backend part of the extension is based on `Java` and a client side is a `TypeScript` based application.
To build Dialect Add-On Example you need:

1. `Java` 8 or later
1. `maven`
1. `npm`
1. `PowerShell` (if you are using Windows system)

### Build VSCode Extension With Dialect Add-On Example

Clone repository and run following script from the root repository folder:

```bash
sh build.sh
```

This script will build server and client parts of the extension and pack them into the **`VSCode`** Extension (`.vsix` file)

### Install Dialect Add-On Example

If build was successfull the Dialect Add-On Example Extension (`.vsix` file) will be situated in the `vsix` folder.
To install it into the **`VSCode`** do following steps:

1. Open **`VSCode`**
1. Open `Extension` tab
1. Open `...` menu and choose "install from VSIX..."
1. Choose `.vsix` file with Dialect Add-On Example

Now you example dialect is ready to use
You can find more information and a sample code in the details to the installed "COBOL Dialect Support Example" extension
