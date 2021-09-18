param($network, $server)
$range = 1..254
$range | ForEach-Object {
  Resolve-DnsName -DnsOnly ($network+'.'+$_) -Server $server -ErrorAction Ignore
}


