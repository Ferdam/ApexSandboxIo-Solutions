public String nameFromEmail(String email) {
 String[] names = email.toLowerCase().replaceAll('@.*', '').split('\\.');
 return names[0].capitalize() + ' ' + names[1].capitalize();
}