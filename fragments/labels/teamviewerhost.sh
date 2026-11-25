teamviewerhost)
    name="TeamViewerHost"
    type="pkgInDmg"
    #packageID="com.teamviewer.teamviewerhost"
    pkgName="Install TeamViewerHost.app/Contents/Resources/Install TeamViewerHost.pkg"
    downloadURL="https://download.teamviewer.com/download/TeamViewerHost.dmg"
    appNewVersion=$(curl -fsL "https://www.teamviewer.com/en/download/portal/macos/" | grep -Eo 'Current version[^0-9]{1,30}[0-9]+(\.[0-9]+)+' | head -n 1 | grep -Eo '[0-9]+(\.[0-9]+)+')
    expectedTeamID="H7UGFBUGV6"
    ;;