#Log in to Exchange Online#
Connect-ExchangeOnline
#Get mailbox statistics for a particular folder#
Get-MailboxFolderStatistics -Identity "brett.congalton@terracat.co.nz" -FolderScope recoverableitems | Format-list name,folderandsubfoldersize,storagequota