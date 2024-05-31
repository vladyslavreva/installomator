googlechromepkg)
    name="Google Chrome"
    type="pkg"
    jamfGroupID="441"
    appNewVersion=$(curl -s -X GET "${mdmURL%/}/JSSResource/computergroups/id/$jamfGroupID" -H "accept: application/xml" -H "Authorization: Bearer $jamfBearerToken" | xmllint --xpath '/computer_group/criteria/criterion[priority="2"]/value/text()' -)
    expectedTeamID="EQHXZ8M8AV"
    jamfPolicyEvent="update_chrome_prod"
    jamfPolicyInstallerSize="194124652"
    jamfDownload="true"
    ;;
