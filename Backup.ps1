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

$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $SourcePath -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + '/backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + './backup-' + $date + '.zip')"
