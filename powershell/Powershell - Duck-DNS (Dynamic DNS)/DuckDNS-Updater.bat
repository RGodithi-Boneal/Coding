PowerShell -WindowStyle Hidden "[System.Net.WebRequest]::Create('https://www.duckdns.org/update?domains='+$(Get-Content '~\duck_dns\user')+'&token='+$(Get-Content '~\duck_dns\token')+'&ip=').GetResponse().StatusCode; Start-Sleep 1; Exit;"