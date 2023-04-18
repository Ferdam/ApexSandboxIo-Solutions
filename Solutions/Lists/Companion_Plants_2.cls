public Boolean companionPlants(List<String> plants) {
 if (plants.size() == 1) return false;
 Map<String, String[]> mapIsCompanion = new Map<String, String[]> {
 'lettuce' => new String[] { 'cucumbers', 'onions' },
 'cucumbers' => new String[] { 'lettuce' },
 'onions' => new String[] { 'carrots', 'lettuce', 'tomatoes' },
 'carrots' => new String[] { 'onions' },
 'tomatoes' => new String[] { 'onions' }
 };
 for (Integer i=0; i < plants.size()-1; i++) {
 List<String> companions = mapIsCompanion.get(plants.get(i));
 if (companions == null) return false;
 if (!companions.contains(plants.get(i+1))) return false;
 }

 return true;
}