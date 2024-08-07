# PowerShell Scripts

## compare-diff

**Description:** Compares two files line by line and highlights the differences. It can also ignore timestamps if specified.

**Parameters:**
- `$f1`: First file to compare (default: "TestFile1.txt").
- `$f2`: Second file to compare (default: "TestFile2.txt").
- `$notime`: Switch to ignore timestamps in the comparison.

**Example Usage:**
```powershell
compare-diff -f1 "File1.txt" -f2 "File2.txt" -notime

## count-files

**Description:** Counts and groups files by their extensions in the current directory and its subdirectories. It can exclude files in node_modules unless specified.

**Parameters:**
- `$includenode`: Switch to include files in node_modules.

**Example Usage:**
```powershell
count-files -includenode

## neovim

**Description:** Searches for a specified file in the current directory and its subdirectories, then opens it in Neovim.

**Parameters:**
- `$f`: The name of the file to search for (mandatory).

**Example Usage:**
```powershell
neovim -f "example.txt"
