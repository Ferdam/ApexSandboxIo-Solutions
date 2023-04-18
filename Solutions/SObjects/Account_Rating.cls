public void setAccountRating(Account a) {
 if (a.AnnualRevenue <= 100000) { a.Rating = 'Cold'; return; }
 if (a.AnnualRevenue <= 500000) { a.Rating = 'Warm'; return; }
 a.Rating = 'Hot';
}