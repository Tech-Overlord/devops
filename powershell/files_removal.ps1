# Removes any files that are present in the path mentioned below. You can change it to whatever you like. Please note that I added a CreationTime argument to remove any files that have existed for longer than a day so you can modify that as per your desire.
Get-ChildItem �Path  �C:\Users\overlord\housekeeping� �Recurse | Where-Object CreationTime �lt (Get-Date).AddDays(-1) | Remove-Item �WhatIf