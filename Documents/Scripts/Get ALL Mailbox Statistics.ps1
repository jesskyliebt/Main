#Connect to Exchange Online#
Connect-ExchangeOnline
#Get Mailbox statistics for all folders#
Get-MailboxFolderStatistics -Identity "brett.congalton@terracat.co.nz"