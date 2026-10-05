foxitpdfreader)
    name="Foxit PDF Reader"
    type="pkg"
    #appNewVersion=$(curl -fsL "https://www.foxit.com/pdf-editor/version-history.html" | xmllint --html --xpath '//div[@id="tab-editor-suite-mac"]//h3/text()' - 2>/dev/null | head -n 1 | sed 's/Version //')
    appNewVersion=$(curl -fsL "https://www.foxit.com/pdf-editor/version-history.html" | grep -oE 'subscription-mac-[0-9]+.{0,40}Version [0-9]+(\.[0-9]+)+' | head -n 1 | grep -oE '[0-9]+(\.[0-9]+)+$')
    versionShort="${appNewVersion%.*}"
    pkgName="${${versionShort//./}%0}"
    downloadURL="https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/mac/${versionShort}/FoxitPDFReader${pkgName}.L10N.Setup.pkg"
    expectedTeamID="8GN47HTP75"
    ;;