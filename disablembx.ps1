Created by JJF3 @ 11:07 PM on 06/09/2023

# Connect to Exchange Online
$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $UserCredential -Authentication "Basic" -AllowRedirection
Import-PSSession $Session

# Disable the user mailbox
$UserPrincipalName = "user@example.com"  # Replace with the user's email address

Disable-Mailbox -Identity $UserPrincipalName -Confirm:$false

# Disconnect from Exchange Online
Remove-PSSession $Session
