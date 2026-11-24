teamviewer)
    name="TeamViewer"
    type="pkgInDmg"
    # packageID="com.teamviewer.teamviewer"
    versionKey="CFBundleShortVersionString"
    pkgName="Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
    downloadURL="https://download.teamviewer.com/download/TeamViewer.dmg"
    appNewVersion=$(curl -fsL "https://www.teamviewer.com/en/download/portal/macos/" | grep -Eo 'Current version[^0-9]{1,30}[0-9]+(\.[0-9]+)+' | head -n 1 | grep -Eo '[0-9]+(\.[0-9]+)+')
    expectedTeamID="H7UGFBUGV6"
    ;;
