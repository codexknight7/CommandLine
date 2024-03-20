# =============================================================================
# Konstantin Pankratov
# 2024/03/19
# ***
# The following script runs with default parameters:
# SourcePath and DestinationPath which values can be specified at runtime.
# It takes the Source Directory, and creates a backup ZIP folder 
# of its content in the Destination Directory.
# ***
# Example: ./backup.ps1 -SourcePath './app' -DestinationPath './backups'
# =============================================================================

Param(
    [string]$SourcePath = './app',
    [string]$DestinationPath = './'
)

If(-Not(Test-Path $SourcePath))
{
    Throw "The source directory $SourcePath does not exist, please specify an existing directory."
}

$date = Get-Date -format "yyyy-MM-dd"
$destinationFile = "$($DestinationPath + './backup-' + $date + '.zip')"

If (-Not (Test-Path $destinationFile)) 
{
  Compress-Archive -Path $SourcePath -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
  Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
} Else {
  Write-Error "Today's backup already exists"
}