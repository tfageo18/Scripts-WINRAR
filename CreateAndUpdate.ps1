$archive = "C:\Users\thf\Desktop\test.rar"
$rar     = "c:\program files\winrar\rar.exe" 
$chemin  = "C:\Users\thf\Desktop\Bureau\*"
$argsCRT = "a -r $archive $chemin"
$argsUPT = "a -r -as $archive $chemin"

If (Test-Path($archive)) {
    Write-Host -BackgroundColor Green "Le fichier existe, nous allons le mettre à jours"
    Start-Process -FilePath "$rar" -ArgumentList "$argsUPT" -Wait
} else {
    Write-Host -BackgroundColor Green "Le fichier n'existe pas, nous allons le créer"
    Start-Process -FilePath "$rar" -ArgumentList "$argsCRT" -Wait
}