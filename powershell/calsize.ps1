$startFolder = "D:\qa"
$currentTime = Get-Date -Format 'yyyy_MM_dd_HH_mm_ss'
$log = join-path $env:userprofile 'log'|join-path -ChildPath $currentTime'.txt'

#$colItems = (Get-ChildItem $startFolder | Measure-Object -property length -sum)
#"$startFolder -- " + "{0:N2}" -f ($colItems.sum / 1MB) + " MB"

$colItems = (Get-ChildItem $startFolder| Where-Object {$_.PSIsContainer -eq $True} | Sort-Object)
foreach ($i in $colItems)
    {
        $subFolderItems = (Get-ChildItem $i.FullName -recurse | Measure-Object -property length -sum)
        $i.FullName + " -- " + "{0:N2}" -f ($subFolderItems.sum / 1MB) + " MB" | Out-File -Append $log
    }
    
