public void insertAtStart(String cityName, List<String> cities) {
 if (cities == null) return;
 if (cities?.size() > 0) { cities.add(0, cityName); return; }
 cities.add(cityName);
}