public void createCourseAndClass(String name, String description) {
 apxio__Course__c newCourse = new apxio__Course__c (
 Name = name,
 apxio__Course_Details__c = description
 );

 insert newCourse;

 String description255 = description == null ? '' : description;
 if (description255.length() >= 255) description255 = description255.substring(0,255);
 apxio__Class__c newClass = new apxio__Class__c (
 Name = name,
 apxio__Course__c = newCourse.Id,
 apxio__Description__c = description255
 );

 insert newClass;

 
}