microsoftonenote)
    name="Microsoft OneNote"
    type="pkg"
    versionKey="CFBundleVersion"
    downloadURL="https://go.microsoft.com/fwlink/?linkid=820886"
    appNewVersion=$(curl -fsIL "$downloadURL" | grep -i '^Location:' | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -n 1)
    expectedTeamID="UBF8T346G9"
    ;;
