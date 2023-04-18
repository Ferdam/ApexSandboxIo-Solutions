public String whichTwo(Integer a, Integer b, Integer c) {
 Integer[] lstNum = new Integer[]{ a, b, c };
 Map<Integer, String> mapNum = new Map<Integer, String> {
 0 => 'a',
 1 => 'b',
 2 => 'c'
 };
 for (Integer i=0; i < lstNum.size(); i++) {
 for (Integer j=0; j < lstNum.size(); j++) {
 if (j == i) continue;
 Integer sum = lstNum[i] + lstNum[j];
 System.debug(lstNum[i] + ' + ' + lstNum[j] + ' = ' + sum);
 if (lstNum.indexOf(sum) >= 0 && lstNum.indexOf(sum) != j && lstNum.indexOf(sum) != i) 
 return mapNum.get(lstNum.indexOf(sum));
 }
 }
 return '';
}