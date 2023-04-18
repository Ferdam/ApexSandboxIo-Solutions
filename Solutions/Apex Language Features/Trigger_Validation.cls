public void validateInsert(List<Opportunity> opportunities){
 for (Opportunity tempOpp : opportunities) {
 if (tempOpp.StageName == 'Closed Won' && String.isBlank(tempOpp.Description)) {
 tempOpp.addError('Description should not be empty for Closed Won opportunity.');
 }
 }
}