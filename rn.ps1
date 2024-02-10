# dir | Rename-Item -NewName { $_.Name -replace '','' }
# Remove-Item ""
dir | Rename-Item -NewName { $_.Name -replace '','' }
Remove-Item ""
