$range = 1..254

$range | ForEach-Object {

  $address = “192.168.3.$_”

  Write-Progress “Scanning Network” $address -PercentComplete (($_/$range.Count)*100)

  New-Object PSObject -Property @{

    Address = $address

    Ping = Test-Connection $address -Quiet -Count 2

  }

}