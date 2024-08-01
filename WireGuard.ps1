# Ask user if they want to start/stop the VPN.
while ($validEntry -ne $true) {

$userInput = Read-Host "Start VPN? y/n"

# TODO: Validate input

if ($userInput -ne "") {
	if ($userInput -eq "y") {
		$validEntry = $true
	}

	if ($userInput -eq "n") {
		$validEntry = $true
	}
}

}


switch ($userInput) {
	y {Start-Process powershell -Verb RunAs -argument "wireguard /installtunnelservice 'C:\Program Files\WireGuard\Data\Configurations\wg_client.conf.dpapi'"; Break}

	n {Start-Process powershell -Verb RunAs -argument "wireguard /uninstalltunnelservice wg_client"; Break}
}


