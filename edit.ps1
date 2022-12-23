
$currentDir = $MyInvocation.MyCommand.Path | Split-Path -Parent
cd $currentDir
$corefilename = "pws.csv"
$encryptedfilename = "pws.csv.gpg"
Write-Output "Decrypting..."
gpg -o $corefilename -d $encryptedfilename
notepad.exe $corefilename | Out-Null
Write-Output "Encrypting..."
gpg -c $corefilename
rm $corefilename