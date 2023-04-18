public Boolean isBirthday(Contact c) {
 return c.Birthdate.month() == Date.today().month() 
 && c.Birthdate.day() == Date.today().day();
}