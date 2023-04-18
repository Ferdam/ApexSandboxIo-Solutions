public Boolean companionPlants(String plant1, String plant2) {
 Map<String, String[]> mapIsCompanion = new Map<String, String[]> {
 'lettuce' => new String[] { 'cucumbers', 'onions' },
 'cucumbers' => new String[] { 'lettuce' },
 'onions' => new String[] { 'carrots', 'lettuce', 'tomatoes' },
 'carrots' => new String[] { 'onions' },
 'tomatoes' => new String[] { 'onions' }
 };

 return mapIsCompanion.get(plant1).contains(plant2);

}