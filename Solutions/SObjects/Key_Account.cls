public Boolean isKeyAccount(Account a) {
 Map<String, Decimal> mapIndustryThresholds = new Map<String, Decimal>{
 'Banking' => 600000,
 'Technology' => 800000,
 'Retail' => 2000000
 };
 Decimal selectedIndustryThreshold = mapIndustryThresholds.get(a.Industry);
 if (selectedIndustryThreshold == null) return a.AnnualRevenue >= 500000;
 return a.AnnualRevenue >= selectedIndustryThreshold;
}