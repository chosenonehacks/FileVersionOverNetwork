 
$computernames = Get-Content C:\test\Computers2.csv 
foreach ($computer in $computernames) {  

$filepath = Test-Path "\\$computer\c$\Program Files (x86)\TIS\eFlow 5\Bin2\" 
 
if ($filepath -eq "True") { 

    Get-ChildItem -Path "\\$computer\c$\Program Files (x86)\TIS\eFlow 5\Bin2\" -Filter *.* | Select-Object Name, @{Name="Version";Expression={$_.VersionInfo.FileVersion}}, LastWriteTime, Length  > "C:\test\$($computer)_Results.txt"

    }
} 
     
