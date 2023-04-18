public boolean isSorted(List<Integer> numbers) {
 if (numbers == null) return false;
 if (numbers.size() <= 2) return true;

 Boolean isDescending = numbers[0] >= numbers[1] && numbers[1] >= numbers[2];
 Boolean isAscending = !isDescending;
 for (Integer i=0; i < numbers.size()-1; i++) {
 if (isDescending && numbers[i] < numbers[i+1]) return false;
 if (isAscending && numbers[i] > numbers[i+1]) return false;
 }

 return true;
}