public Integer maxConsecutiveOnes(Integer[] numbers) {
 Integer maxConsec = 0;
 Integer selectedType = 1;
 for (Integer i=0; i < numbers.size(); i++) {
 // Integer typeToCount = numbers[i];
 Integer typeToCount = selectedType;
 Integer currentMaxConsec = 0;
 for (Integer j=i; j < numbers.size(); j++) {
 if (numbers[j] == typeToCount) { currentMaxConsec++; continue; }
 i = j;
 break;
 }
 if (maxConsec < currentMaxConsec) maxConsec = currentMaxConsec;
 }
 return maxConsec;
}