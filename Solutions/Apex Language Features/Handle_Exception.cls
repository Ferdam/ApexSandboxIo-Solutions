public String divide(Integer a, Integer b){
 Integer result;
 try {
 result = a/b;
 }
 catch (Exception ex) {
 return ex.getMessage();
 }
 return ''+result;
}