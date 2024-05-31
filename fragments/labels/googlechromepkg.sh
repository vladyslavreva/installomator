googlechromepkg)
    name="Google Chrome"
    type="pkg"
    #
    # Note: this url acknowledges that you accept the terms of service
    # https://support.google.com/chrome/a/answer/9915669
    #
    downloadURL="https://dl.google.com/chrome/mac/stable/accept_tos%3Dhttps%253A%252F%252Fwww.google.com%252Fintl%252Fen_ph%252Fchrome%252Fterms%252F%26_and_accept_tos%3Dhttps%253A%252F%252Fpolicies.google.com%252Fterms/googlechrome.pkg"
    appNewVersion=$(curl -s -X GET "${mdmURL%/}/JSSResource/computergroups/id/$jamfGroupID" -H "accept: application/xml" -H "Authorization: Bearer $jamfBearerToken" | xmllint --xpath '/computer_group/criteria/criterion[priority="2"]/value/text()' -)
    expectedTeamID="EQHXZ8M8AV"
    jamfPolicyEvent="update_chrome_test"
    jamfDownload="true"
    ;;
