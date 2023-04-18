public Id insertStudent(String name, String email) {
 apxio__Student__c newRec = new apxio__Student__c(apxio__Email__c = email, Name = name);
 insert newRec;
 return newRec.Id;
}