public List<sObject> getListOfsObject(List<Account> accounts, List<Contact> contacts)
{
 List<SObject> lstSObjects = new List<SObject>();
 if (accounts != null) {
 lstSObjects.addAll((List<SObject>) accounts);
 }
 if (contacts != null) {
 lstSObjects.addAll((List<SObject>) contacts);
 }

 return lstSObjects;
}