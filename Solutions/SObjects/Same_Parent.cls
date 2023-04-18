public Boolean sameParent(Contact c, Opportunity opp) {
 return c.AccountId != null && c.AccountId == opp.AccountId;
}