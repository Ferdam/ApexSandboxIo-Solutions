public Id insertCourse(String name, String details, Integer credits) {
 apxio__Course__c newCourse = new apxio__Course__c(
 apxio__Course_Details__c = details,
 apxio__Credits__c = '' + credits,
 Name = name
 );

 Database.SaveResult insertResult = Database.insert(newCourse, false);
 if (!insertResult.isSuccess()) return null;

 return newCourse.Id;
}