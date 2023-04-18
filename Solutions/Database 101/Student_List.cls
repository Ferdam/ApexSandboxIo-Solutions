public void insertStudents(List<String> studentNames, List<String> studentEmails) {
 apxio__Student__c[] lstNewStudents = new apxio__Student__c[]{};
 for (Integer i = 0; i < studentNames.size(); i++) {
 lstNewStudents.add(
 new apxio__Student__c (
 Name = studentNames[i],
 apxio__Email__c = studentEmails[i]
 )
 );
 }

 insert lstNewStudents;
}