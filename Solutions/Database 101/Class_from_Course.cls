public Id classFromCourse(String courseName) {
 apxio__Course__c[] parentCourseQuery = [SELECT Id, Name FROM apxio__Course__c WHERE Name = :courseName LIMIT 1];
 if (parentCourseQuery.size() == 0) { return null; }
 apxio__Course__c parentCourse = parentCourseQuery[0];
 apxio__Class__c newClass = new apxio__Class__c(
 Name = parentCourse.Name,
 apxio__Course__c = parentCourse.Id
 );

 insert newClass;
 return newClass.Id;
}