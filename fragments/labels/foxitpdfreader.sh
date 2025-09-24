foxitpdfreader)
    name="Foxit PDF Reader"
    type="pkg"
    appNewVersion=$(curl -fsL "https://www.foxit.com/pdf-editor/version-history.html" | xmllint --html --xpath '//div[@id="tab-editor-suite-mac"]//h3/text()' - 2>/dev/null | head -n 1 | sed 's/Version //')
    majorNew="${appNewVersion%%.*}"
    versionShort="${appNewVersion:0:6}"
    pkgName="${versionShort//./}"
    majorCurrent=$([[ -d "/Applications/${name}.app" ]] && defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null | cut -d. -f1)
    if [[ "$majorCurrent" == "$majorNew" && -n "$majorCurrent" ]]; then
        downloadURL="https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/${majorNew}.x/${versionShort}/FoxitPDFReader${pkgName}Upd.L10N.pkg"
    else
        downloadURL="https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/${majorNew}.x/${versionShort}/FoxitPDFReader${pkgName}.L10N.Setup.pkg"
    fi
    expectedTeamID="8GN47HTP75"
    ;;