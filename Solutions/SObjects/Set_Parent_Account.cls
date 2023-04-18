public void setParent(Account acc, Contact con, Opportunity opp) {
 if (acc?.Id == null) return;
 con.AccountId = acc.Id;
 opp.AccountId = acc.Id;
}