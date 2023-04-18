public Integer fibonacci(Integer n) {
 Map<Integer, Integer> mapCache = new Map<Integer, Integer>{ 0 => 0, 1 => 1, 2 => 1};
 if (n == 1) return 1;
 for (Integer i=2; i <= n; i++) {
 Integer cache = mapCache.get(i);
 Integer previous = mapCache.get(i-1);
 Integer preprevious = mapCache.get(i-2);
 if (cache == null) { 
 cache = preprevious + previous; 
 mapCache.put(i, cache);
 continue;
 }
 }
 return mapCache.get(n);
}