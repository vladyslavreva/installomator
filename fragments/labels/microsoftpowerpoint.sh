microsoftpowerpoint)
    name="Microsoft PowerPoint"
    type="pkg"
    versionKey="CFBundleVersion"
    downloadURL=$(curl -fsSL "https://learn.microsoft.com/en-us/officeupdates/update-history-office-for-mac" | \
        grep -o 'https://officecdn.microsoft.com[^"]*Microsoft_PowerPoint_[^"]*\.pkg' | head -n 1)
    appNewVersion=$(echo "$downloadURL" | grep -oE "Microsoft_PowerPoint_[0-9]+\.[0-9]+\.[0-9]+" | sed 's/Microsoft_PowerPoint_//')
    # downloadURL="https://go.microsoft.com/fwlink/?linkid=525136"
    # appNewVersion=$(curl -fs https://macadmins.software/latest.xml | xpath '//latest/package[id="com.microsoft.powerpoint.standalone.365"]/cfbundleshortversionstring' 2>/dev/null | sed -E 's/<cfbundleshortversionstring>([0-9.]*)<.*/\1/')
    # appNewVersion=$(curl -fsIL "$downloadURL" | grep -i location: | grep -o "/Microsoft_.*pkg" | cut -d "_" -f 3 | cut -d "." -f 1-2)
    expectedTeamID="UBF8T346G9"
    # if [[ -x "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
    #     printlog "Running msupdate --list"
    #     "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" --list
    # fi
    # updateTool="/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate"
    # updateToolArguments=( --install --apps PPT32019 )
    ;;
