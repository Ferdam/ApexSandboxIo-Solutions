public String aOrAn(String word) {
 return word.left(1).replaceAll('a|e|i|o|u', '#').startsWith('#') ? 'an ' + word : 'a ' + word;
}