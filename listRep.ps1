# gets all files in the specified folder and its subfolders
Get-ChildItem -Path 'C:\YourFolderPath' -Recurse -File | 
# removes the file extensions from the list. $_ is a variable that refers to the current object in the pipeline, and BaseName is a property of the file that gets the name without the extension.
ForEach-Object { $_.BaseName } | 
# outputs the list to a file
Out-File -FilePath '.\liste.txt'
