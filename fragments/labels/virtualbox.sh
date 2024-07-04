virtualbox)
    # credit: AP Orlebeke (@apizz)
    name="VirtualBox"
    type="pkgInDmg"
    pkgName="VirtualBox.pkg"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL=$(curl -fsL "https://www.virtualbox.org/wiki/Testbuilds" | grep "macOSArm64.dmg" | xmllint --html --xpath 'string(//a/@href)' -)
        appNewVersion=$(echo "$downloadURL" | awk -F'[-_]' '{print $2}')
    elif [[ $(arch) == "i386" ]]; then
        downloadURL="https:$(curl -fsL "https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html" | grep "OSX.dmg" | xmllint --html --xpath 'string(//a/@href)' -)"
        appNewVersion=$(echo "${downloadURL}" | awk -F '/' '{print $5}')
    fi
    expectedTeamID="VB5E2TV963"
    ;;
