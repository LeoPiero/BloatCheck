$apps = @(
    "Microsoft.YourPhone",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.BingSearch",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.Edge.GameAssist",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.GetHelp",
    "MSTeams"
)

foreach ($app in $apps) {
    if (Get-AppxPackage -Name $app -AllUsers) {
        Write-Host "Removing $app..."
        Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage
        Write-Host "$app removed."
    }
    else {
        Write-Host "$app not found."
    }
}