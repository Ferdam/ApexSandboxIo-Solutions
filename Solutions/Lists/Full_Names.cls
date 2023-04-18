public List<String> fullNames(List<String> firstNames, List<String> lastNames) {
 List<String> lstFullNames = new List<String>();

 for (Integer i=0; i<firstNames.size(); i++) {
 lstFullNames.add(firstNames[i] + ' ' + lastNames[i]);
 }

 return lstFullNames;
}