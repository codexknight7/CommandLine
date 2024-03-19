# =============================================================================
# Konstantin Pankratov
# 2024/03/19
# ***
# Get list of all processes where CPU > 2, 
# Sort Descending by CPU and Show first 3 rows
# =============================================================================
Get-Process | Where-Object CPU -gt 2 | Sort-Object CPU -Descending | Select-Object -First 3