function dotnet-analysis {
    param (
        [string]$f = "TestFile1.txt"
    )

    if (Test-Path $f) {
        $lineNumber = 1
        $actionMethodLines = @()
        $actionLines = @()
        $endpointLines = @()

        # Read and categorize the lines with line numbers
        Get-Content $f | ForEach-Object {
            if ($_ -match "Executed action method") {
                $actionMethodLines += "$lineNumber $_"
            } elseif ($_ -match "Executed action") {
                $actionLines += "$lineNumber $_"
            } elseif ($_ -match "Executed endpoint") {
                $endpointLines += "$lineNumber $_"
            }
            $lineNumber++
        }

        # Section for "Executed action method"
        Write-Host "`n--- Executed Action Methods ---" -ForegroundColor Cyan
        $actionMethodLines | Sort-Object | ForEach-Object {
            Write-Host $_ -ForegroundColor Yellow
        }

        # Section for "Executed action" (without method)
        Write-Host "`n--- Executed Actions ---" -ForegroundColor Cyan
        $actionLines | Sort-Object | ForEach-Object {
            Write-Host $_ -ForegroundColor Yellow
        }

        # Section for "Executed endpoint"
        Write-Host "`n--- Executed Endpoints ---" -ForegroundColor Cyan
        $endpointLines | Sort-Object | ForEach-Object {
            Write-Host $_ -ForegroundColor Yellow
        }

    } else {
        Write-Host "File not found: $f" -ForegroundColor Red
    }
}
