public String registerStudent(String name, String phone, String email) {
 apxio__Student__c newStudent = new apxio__Student__c(
 Name = name,
 apxio__Phone__c = phone,
 apxio__Email__c = email
 );

 insert newStudent;

 return [SELECT Id, apxio__Registration_Number__c FROM apxio__Student__c WHERE Id = :newStudent.Id LIMIT 1].apxio__Registration_Number__c;
}