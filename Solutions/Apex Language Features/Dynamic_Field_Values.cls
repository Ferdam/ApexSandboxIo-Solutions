public List<String> getFieldsValue(Account acc, List<String> fields)
{
 String[] listValues = new String[]{};
 for (String tempField : fields) {
 String fieldValue = '' + acc.get(tempField);
 if (acc.get(tempField) == null) fieldValue = null;
 listValues.add(fieldValue);
 // listValues.add(acc.get(tempField) == null ? null : '' + acc.get(tempField));
 }
 return listValues;
}