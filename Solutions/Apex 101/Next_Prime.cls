public Integer nextPrime(Integer num) {
 while (true) {
 Integer count = 0;
 num++;
 for (Integer i=1; i <= num/2; i++) {
 if (Math.mod(num, i) == 0) count++;
 if (count > 2) break;
 }
 if (count == 1) return num;
 }
 return num;
}