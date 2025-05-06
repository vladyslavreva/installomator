1password8)
    name="1Password"
    type="pkg"
    downloadURL="https://downloads.1password.com/mac/1Password.pkg"
    appNewVersion=$(curl -s https://releases.1password.com/mac/index.xml | xmllint --xpath '//rss/channel/item/title' - 2>/dev/null | grep -i -v 'beta' | tail -n1 | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+(\-[0-9]+)?).*/\1/' )
	expectedTeamID="2BUA8C4S2C"
    blockingProcesses=( "1Password Extension Helper" "1Password 7" "1Password 8" "1Password" "1PasswordNativeMessageHost" "1PasswordSafariAppExtension" )
    ;;
