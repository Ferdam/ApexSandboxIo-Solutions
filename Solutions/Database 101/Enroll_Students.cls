public void enrollStudents(List<String> emails, String className) {
 apxio__Student__c[] lstStudentsByEmail = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c WHERE apxio__Email__c IN :emails];
 apxio__Class__c[] studentClassQuery = [SELECT Id, Name FROM apxio__Class__c WHERE Name = :className LIMIT 1];
 if (studentClassQuery.size() == 0) return;
 apxio__Class__c studentClass = studentClassQuery[0];

 apxio__Class_Enrollment__c[] lstNewEnrollments = new apxio__Class_Enrollment__c[]{};
 for (apxio__Student__c tempStudent : lstStudentsByEmail) {
 lstNewEnrollments.add(
 new apxio__Class_Enrollment__c(
 apxio__Student__c = tempStudent.Id,
 apxio__Offered_Class__c = studentClass.Id
 )
 );
 }

 insert lstNewEnrollments;
}