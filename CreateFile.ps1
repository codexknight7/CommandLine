# =============================================================================
# Konstantin Pankratov
# 2024/03/19
# ***
# The following script is called with $Path parameter from CLI
# to create a new file. 
# Ex: ./CreateFile.ps1 -Path './newfile.txt'
# ***
# 1)  We made the parameter Mandatory. If user omits it, he will be asked to 
# provide it.
# 2) We ensure that the parameter is not an empty string.
# 3) We endure that the path entered is converted to string type,
# that way it will accept numbers and booleans (true/false) as file name
# =============================================================================
Param(
    [Parameter(Mandatory, HelpMessage = "Please provide a valid path.")]
    [string]$Path
)
If (-Not $path -eq '' -and $path.Length -gt 3){
    New-Item $Path
    Write-Host "File $Path was created."
} Else {
    Write-Error "Path cannot be empty."
}

