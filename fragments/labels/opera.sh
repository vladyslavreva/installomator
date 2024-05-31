opera)
    name="Opera"
    type="dmg"
    appNewVersion=$(curl -s "https://get.opera.com/ftp/pub/opera/desktop/" | sed -n 's|.*href="\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\)/".*|\1|p' | sort -t. -k1,1n -k2,2n -k3,3n -k4,4n | tail -n 1)
    downloadURL="https://get.opera.com/pub/opera/desktop/$appNewVersion/mac/Opera_"$appNewVersion"_Setup.dmg"
    versionKey="CFBundleVersion"
    expectedTeamID="A2P9LX4JPN"
    ;;
