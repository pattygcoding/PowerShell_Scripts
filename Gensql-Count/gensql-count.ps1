function gensql-count {
	[CmdletBinding()]
	param (
        [Parameter(Mandatory=$true)]
        [string]$c
    )
	
	$script = @"
SELECT COUNT(*) AS total_entries
FROM $c;

"@

	 Write-Host $script -ForegroundColor Magenta
}
