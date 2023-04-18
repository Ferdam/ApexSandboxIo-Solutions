public Boolean isLeapYear(Integer year) {
 Boolean isDivisibleBy4 = Math.mod(year, 4) == 0;
 Boolean isDivisibleBy100 = Math.mod(year, 100) == 0;
 Boolean isDivisibleBy400 = Math.mod(year, 400) == 0;

 return (isDivisibleBy400 && isDivisibleBy100) || (isDivisibleBy4 && !isDivisibleBy100);
}
