# list of apps to be uninstalled
$apps = @(
	# "MSTeams"
    "Microsoft.YourPhone",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.BingSearch",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.Edge.GameAssist",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.GetHelp"
    
)

# loop through list
foreach ($app in $apps) {
	# check if app is installed
    if (Get-AppxPackage -Name $app -AllUsers) {
		# uninstall app
        Write-Host "Removing $app..."
        Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage
        Write-Host "$app removed."
    } else {
        Write-Host "$app not found."
    } #end if
} # end foreach