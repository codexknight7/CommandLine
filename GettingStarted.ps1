# =============================================================================
# Konstantin Pankratov
# 2024/03/19
# ***
# THe following program gets current date. 
# Then asks user his name.
# Then prints two messages with values coming from two variables.
# =============================================================================


$current_date = Get-Date
$user_name = Read-Host -Prompt "What is your name?"

Write-Output "Today's date is $current_date"
Write-Output "Today is the day $user_name began a PowerShell ptogramming journey."