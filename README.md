# COBOL Language Support Dialect Add-on Template

[COBOL Language Support](https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol) enhances the COBOL programming experience on Visual Studio Code. The extension leverages the language server protocol to provide autocomplete, syntax highlighting and coloring, and diagnostic features for COBOL code and copybooks. 

Many companies have their own COBOL preprocessors which complement or modify standard IBM enterprise COBOL with custom statements and keywords. In our documentation, we refer to these preprocessors as "dialects". Support for COBOL dialects is enabled by installing add-on extensions. Some dialect extensions are available on the VS Code marketplace, but you can also make your own custom dialect add-ons. This repository provides an example COBOL Language Support dialect add-on extension which can be used as a template.

## Prerequisites

The backend part of COBOL Language Support is based on Java and the client side is a TypeScript-based application.
To build a dialect add-on extension you need:

* Java version 8 or higher
* maven
* npm
* (Windows only) PowerShell

## Build the Example VSCode Extension

To build the example VS Code Extension, clone this repository and run the following script from the root repository folder:

```bash
sh build.sh
```

This script builds the server and client parts of the extension and packs them into a VS Code Extension (`.vsix` file)

## Install the Example VS Code Extension

If the build is successful, the dialect add-on Extension (`.vsix` file) is situated in the **/vsix** folder.
To install the extension on VS Code, do the following:

1. Open VS Code.
1. Open the **Extensions** tab.
1. In the **...** menu, select **install from VSIX...**
1. Select the `.vsix` file with your dialect add-on.

The example dialect add-on is ready to use.

## Sample Code

The example extension provides support for several custom statements. For more information, see the extension's readme file in the VS Code extensions menu, or in the **client/example-dialect-support** folder of this git repository.

Use the following sample code to test the functionalities of the example dialect add-on:

```
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STRUCTNAME.
           03 VARNAME  PIC X(20).
           88 FLAG1-ON              VALUE 'Y'.

      *  custom inject statements
      *  This statements injects a copybook.
      *  syntax: EXAMPLE INJECT <copybook Name>
      *  Following statement would work only when copybook 
      *  by name ABC is present.
       EXAMPLE INJECT ABC.

      *    Level 100 statement: 100 <iden>
      *    Level 100 introduces variables in following format
      *    01 <iden>.
      *        05 <iden>_1ST PIC X(9).
      *        05 <iden>_2ND PIC V(2).
      *        88 <iden>-OFF VALUE 'N'.

       EXAMPLE 100 XYZ

      
       PROCEDURE DIVISION.

      *    Shift statement: SHIFT <identifier> TO <identifier>.
       EXAMPLE SHIFT STRUCTNAME TO VARNAME.

      *    Bitwise shift statement: 
      *    BITWISE SHIFT <identifier> (RIGHT|LEFT)<number>.
       EXAMPLE BITWISE SHIFT STRUCTNAME RIGHT 9.

      *    Untie statement: UNTIE <identifier>
       EXAMPLE UNTIE VARNAME.

      *   Unset statement: UNSET <conditional-identifier>
       EXAMPLE UNSET FLAG1-ON.

      *   custom Rpc message parse statement:  
      *    RPC-MSG PARSE <identifier1> INTO
      *    <identifier2>
      *    (WITH DETAILS? XID <identifier3>)?
      *    (WITH DETAILS? MSG_TYPE <identifier4>)?
      *    (WITH DETAILS? CALL <identifier5>)?
      *    (WITH DETAILS? REPLY <identifier6>)?
       EXAMPLE RPC-MSG PARSE VARNAME INTO XYZ
           WITH details xid XYZ-1ST
           WITH DETAILS msg_type XYZ-1ST
           WITH DETAILS CALL XYZ-2ND
           WITH DETAILS REPLY XYZ-2ND.
           move XYZ-1ST TO XYZ-OFF.

      *  Following statement would work only when copybook 
      *  by name ABC is present.
           move ABC_ID to XYZ.

```
