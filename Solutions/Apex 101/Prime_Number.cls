public Boolean isPrime(Integer num) {
 Integer divisibleCount = 1;
 for (Integer i=1; i <= (Integer)(num/2); i++) {
 if (Math.mod(num, i) == 0) { divisibleCount++; }
 }
 return divisibleCount <= 2;
}