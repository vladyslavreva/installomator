foxitpdfreader)
    name="Foxit PDF Reader"
    type="pkg"
    appNewVersion=$(curl -fsL "https://www.foxit.com/pdf-editor/version-history.html" | xmllint --html --xpath '//div[@id="tab-editor-suite-mac"]//h3/text()' - 2>/dev/null | head -n 1 | sed 's/Version //')
    downloadURL="https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/${appNewVersion%%.*}.x/${appNewVersion:0:6}/FoxitPDFReader${${appNewVersion:0:6}//./}.L10N.Setup.pkg"
    expectedTeamID="8GN47HTP75"
    ;;
