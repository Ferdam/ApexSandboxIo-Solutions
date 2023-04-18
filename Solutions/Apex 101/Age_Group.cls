public String ageGroup(Integer n) {
 if (n <= 1) { return 'Infant'; }
 if (n <= 14) { return 'Child'; }
 if (n <= 21) { return 'Youth'; }
 return 'Adult';
}