# PowerShell Scripts by Patrick Goodwin

## Table of Contents
- [Compare Diff](#compare-diff)
- [Count Files](#count-files)
- [Neovim](#neovim)
- [Regvim](#regvim)
- [Search Match](#search-match)
- [Update Git](#update-git)
- [Vs](#vs)
- [Vsc](#vsc)
    

## Compare Diff

Compares two files line by line and highlights the differences. It can also ignore timestamps if specified.

### Parameters
- `-f1`: First file to compare (default: "TestFile1.txt").
- `-f2`: Second file to compare (default: "TestFile2.txt").
- `-notime`: Switch to ignore timestamps in the comparison.

### Example Usage
```powershell
compare-diff -f1 "File1.txt" -f2 "File2.txt" -notime
```
## Count Files

Counts and groups files by their extensions in the current directory and its subdirectories. It can exclude files in node_modules unless specified.

### Parameters
- `-includenode`: Switch to include files in node_modules.

### Example Usage
```powershell
count-files -includenode
```
## Neovim

Searches for a specified file in the current directory and its subdirectories, then opens it in Neovim.

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```powershell
neovim -f "example.txt"
```
## Regvim

Searches for a specified file in the current directory and its subdirectories, then opens it in Vim.

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```powershell
regvim -f "example.txt"
```
## Search Match

Searches for files with a specific extension containing specified strings. It can limit results, perform cross-term searches, display full directories, and filter for method calls.

### Parameters
- `-e`: File extension to search for.
- `-s`: Array of strings to search for within the files.
- `-uncapped`: Switch to list more than 3000 results.
- `-cross`: Switch to search for files containing all strings.
- `-dir`: Switch to display the full file directories.
- `-calls`: Switch to filter for lines where the string is used as a method call.

### Example Usage
```powershell
search-match -e ".cs" -s "SearchTerm1", "SearchTerm2" -cross -dir
```
## Update Git

Fetches the latest changes from the remote repository and merges them into the current branch. Can specify a branch to merge from.

### Parameters
- `-branch`: The branch to merge into the current branch (default: "master").

### Example Usage
```powershell
update-git
```
## Vs
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio.

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```powershell
vs -f "example.cs"
```
## Vsc
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio Code.

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```powershell
vsc -f "example.js"
```
