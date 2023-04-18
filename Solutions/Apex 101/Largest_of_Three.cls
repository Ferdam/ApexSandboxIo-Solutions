public static Integer findLargest(Integer num1, Integer num2, Integer num3) {
	Integer[] numList = new Integer[] {num1, num2, num3};
 Integer largest = numList[0];
 for (Integer num : numList) {
 if (num > largest) largest = num;
 }
 return largest;
}