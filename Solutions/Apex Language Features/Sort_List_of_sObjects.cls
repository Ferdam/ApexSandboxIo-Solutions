public List<Account> getAccounts(List<Account> accounts) {
 if (accounts == null) return null;
 for (Integer i=0; i < accounts.size(); i++) {
 for (Integer j=0; j < accounts.size(); j++) {
 if (j == i || accounts[j].AnnualRevenue == accounts[i].AnnualRevenue) continue;
 if (accounts[j].AnnualRevenue < accounts[i].AnnualRevenue) {
 Account aux = accounts[i];
 accounts[i] = accounts[j];
 accounts[j] = aux;
 }
 }
 }
 return accounts;
}
// write extra class here 
