public Map<String,String> getContextUserInformation(){
 
 User currentUser = [SELECT Id, UserName, ProfileId, Email, UserType FROM User WHERE Id = :UserInfo.getUserId()];
 return new Map<String, String> {
 'UserName' => currentUser.UserName,
 'ProfileId' => currentUser.ProfileId,
 'EmailId' => currentUser.Email,
 'Type' => currentUser.UserType
 };

 // OR

 // return new Map<String, String> {
 // 'UserName' => UserInfo.getUserName(),
 // 'ProfileId' => UserInfo.getProfileId(),
 // 'EmailId' => UserInfo.getUserEmail(),
 // 'Type' => UserInfo.getUserType()
 // };

}