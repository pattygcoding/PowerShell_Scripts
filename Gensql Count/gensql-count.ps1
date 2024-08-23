function gensql-count {
	[CmdletBinding()]
	param (
        [Parameter(Mandatory=$true)]
        [string]$db
    )
	
	$script = @"
SELECT COUNT(*) AS total_entries
FROM $db;

"@

	 Write-Host $script -ForegroundColor Magenta
}
