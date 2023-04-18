public List<Integer> fibonacciSeries(Integer n) {
 Map<Integer, Integer> mapCache = new Map<Integer, Integer>{ 0 => 0, 1 => 1, 2 => 1};
 Integer[] fiboSeries = new Integer[]{};
 if (n == 1) return new Integer[]{1};
 for (Integer i=1; i <= n; i++) {
 Integer cache = mapCache.get(i);
 Integer previous = mapCache.get(i-1);
 Integer preprevious = mapCache.get(i-2);
 if (cache == null) { 
 cache = preprevious + previous; 
 mapCache.put(i, cache);
 }
 fiboSeries.add(cache);
 }
 return fiboSeries;
}