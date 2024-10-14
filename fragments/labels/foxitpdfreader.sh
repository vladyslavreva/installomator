foxitpdfreader)
    name="Foxit PDF Reader"
    type="pkg"
    downloadURL="https://www.foxit.com/downloads/latest.html?product=Foxit-Reader&platform=Mac-OS-X"
    appNewVersion=$(curl -fsL "https://www.foxit.com/pdf-editor/version-history.html" | xmllint --html --xpath '//div[@id="tab-editor-suite-mac"]//h3/text()' - 2>/dev/null | head -n 1 | sed 's/Version //')
    expectedTeamID="8GN47HTP75"
    ;;
