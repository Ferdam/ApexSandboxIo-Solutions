public List<Integer> positiveIntegers(List<Integer> numbers) {
 List<Integer> justPositiveNumbers = new List<Integer>();
 for (Integer num : numbers) {
 if (num > 0) justPositiveNumbers.add(num);
 }
 return justPositiveNumbers;
}