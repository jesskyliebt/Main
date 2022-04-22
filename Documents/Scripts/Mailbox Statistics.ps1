#Log into Exchange Online#
Connect-ExchangeOnline
#Get mailbox storage statistics#
get-mailboxstatistics "nicky.ashton@terracat.co.nz" | Format-List StorageLimitStatus,TotalItemSize,TotalDeletedItemSize,ItemCount,DeletedItemCount