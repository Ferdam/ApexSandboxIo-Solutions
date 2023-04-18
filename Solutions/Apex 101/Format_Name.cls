public String formatName(String firstName, String lastName) {
 if (String.isBlank(firstName) && String.isBlank(lastName)) return '';
 if (String.isBlank(firstName)) return lastName;
 if (String.isBlank(lastName)) return firstName;
 return lastName + ', ' + firstName;
}