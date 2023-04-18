public List<Account> getAccountsFromJSONString(String inputJSON){
 if (inputJSON == null) return null;
 return (List<Account>) JSON.deserializeStrict(inputJSON, Account[].class);
}