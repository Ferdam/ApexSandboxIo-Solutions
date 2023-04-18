public Integer secondLargest(List<Integer> numbers) {
 if (numbers == null) return null;
 numbers.sort();
 Set<Integer> setNumbers = new Set<Integer>(numbers);
 return new List<Integer>(setNumbers)[setNumbers.size()-2];
}