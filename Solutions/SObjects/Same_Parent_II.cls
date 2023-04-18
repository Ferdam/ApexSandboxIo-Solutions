public Boolean sameParent(Account acc, Contact con, Opportunity opp) {
 return acc?.Id != null && con.AccountId == opp.AccountId && con.AccountId == acc.Id; 
}