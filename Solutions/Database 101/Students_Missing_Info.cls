public List<apxio__Student__c> selectStudentsWithoutContactInfo() {
 apxio__Student__c[] lstStuds = [SELECT Id, Name 
 FROM apxio__Student__c 
 WHERE apxio__Active__c = true 
 AND (apxio__Email__c = null
 OR apxio__Phone__c = null)
 ORDER BY Name ASC];

 return lstStuds;
}