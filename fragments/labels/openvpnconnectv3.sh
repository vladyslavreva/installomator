openvpnconnectv3)
    # credit: @lotnix
    name="OpenVPN Connect"
    type="pkgInDmg"
    if [[ $(arch) == "arm64" ]]; then
        pkgName="OpenVPN_Connect_[0-9_()]*_arm64_Installer_signed.pkg"
    elif [[ $(arch) == "i386" ]]; then
        pkgName="OpenVPN_Connect_[0-9_()]*_x86_64_Installer_signed.pkg"
    fi
    downloadURL="https://openvpn.net/downloads/openvpn-connect-v3-macos.dmg"
    appNewVersion=$(curl -fsIL "$downloadURL" | sed -nE 's/.*openvpn-connect-([0-9]+\.[0-9]+\.[0-9]+).*/\1/p')
    curlOptions=( -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Safari/605.1.15" )
    expectedTeamID="ACV7L3WCD8"
    ;;
