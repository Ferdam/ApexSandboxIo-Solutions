public List<String> orgNames(List<String> adjectives, List<String> animals) {
 Set<String> setOrgNames = new Set<String>();

 for (String currentAdjective : adjectives) {
 for (String currentAnimal : animals) {
 String newOrgName = currentAdjective + '-' + currentAnimal;
 setOrgNames.add(newOrgName);
 }
 }

 return new List<String>(setOrgNames);
}