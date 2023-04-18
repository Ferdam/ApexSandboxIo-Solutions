public String changeTimeFormat(String strTime) {
 String[] hourMinutes = strTime.split(':');
 Integer hour = Integer.valueOf(hourMinutes[0]);
 String minutes = hourMinutes[1];
 Boolean isPM = hour >= 12;
 hour = hour > 12 ? Math.abs(hour - 12) : hour;
 hour = hour == 0 ? 12 : hour;
 return ('' + hour).leftPad(2, '0') + ':' + minutes + ( isPM ? ' PM' : ' AM' );
}