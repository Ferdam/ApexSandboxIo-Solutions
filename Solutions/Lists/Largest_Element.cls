public static Integer findLargest(List<Integer> nums) {
	if (nums?.size() == 0) return null;
 Integer largest = nums[0];
 for (Integer i=0; i < nums.size(); i++) {
 if (largest < nums[i]) {
 largest = nums[i];
 }
 }

 return largest;
}