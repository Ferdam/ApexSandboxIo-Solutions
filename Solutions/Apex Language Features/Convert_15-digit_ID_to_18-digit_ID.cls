public String convert15to18DigitId(String fifteenDigit)
{
 if (fifteenDigit == null) return null;
 try {
 Id x18Digit = fifteenDigit;
 return x18Digit;
 }
 catch (Exception ex) {}
 return '-1';
}