# PowerShell Scripts by Patrick Goodwin

## Table of Contents
- [Compare Diff](#compare-diff)
- [Connect Four](#connect-four)
- [Count Files](#count-files)
- [Dotnet Analysis](#dotnet-analysis)
- [Neovim](#neovim)
- [Random Password](#random-password)
- [Regvim](#regvim)
- [Search Match](#search-match)
- [Update Git](#update-git)
- [Time](#time)
- [Vs](#vs)
- [Vsc](#vsc)
    

## Compare Diff
Compares two files line by line and highlights the differences. It can also ignore timestamps if specified.

### Parameters
- `-f1`: First file to compare (default: "TestFile1.txt").
- `-f2`: Second file to compare (default: "TestFile2.txt").
- `-notime`: Switch to ignore timestamps in the comparison.

### Example Usage
```
compare-diff -f1 "File1.txt" -f2 "File2.txt" -notime
```
## Connect Four
A fully functional Connect Four game, complete with color coded pieces and win checking.

### Parameters
- `-p1`: First player name (default: "Player 1").
- `-p2`: Second player name (default: "Player 2").

### Example Usage
```
connect-four -p1 "Bob" -p2 "Ryan"
```
## Count Files
Counts and groups files by their extensions in the current directory and its subdirectories. It can exclude files in node_modules unless specified.

### Parameters
- `-includenode`: Switch to include files in node_modules.

### Example Usage
```
count-files -includenode
```
## Dotnet Analysis
Analyzes dotnet backend output on the terminal and sorts outputs to find specific calls to APIs and methods.

### Parameters
- `-f`: File to read (default: "TestFile1.txt").

### Example Usage
```
dotnet-analysis -f "file.txt"
```
## Neovim
Searches for a specified file in the current directory and its subdirectories, then opens it in Neovim.

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```
neovim -f "example.txt"
```
## Random Password
Prints a random password.

### Parameters
- `-l`: The maximum length of the password allowed (default: 12).

### Example Usage
```
random-password
```
## Regvim
Searches for a specified file in the current directory and its subdirectories, then opens it in Vim.

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```
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
```
search-match -e ".cs" -s "SearchTerm1", "SearchTerm2" -cross -dir
```
## Time
Outputs the time of any operation.

### Parameters
- `-f`: The operation to measure

### Example Usage
```
time -f { Write-Output "Hello World" }
```
## Update Git
Fetches the latest changes from the remote repository and merges them into the current branch. Can specify a branch to merge from.

### Parameters
- `-branch`: The branch to merge into the current branch (default: "master").

### Example Usage
```
update-git
```
## Vs
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio.

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```
vs -f "example.cs"
```
## Vsc
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio Code.

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```
vsc -f "example.js"
```
