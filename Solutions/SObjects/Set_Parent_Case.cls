public void linkParent(Case c1, Case c2) {
 if (c1.ContactId == null || c1.ContactId != c2.ContactId) return;
 if (c1.CreatedDate > c2.CreatedDate) c1.ParentId = c2.Id;
 if (c1.CreatedDate < c2.CreatedDate) c2.ParentId = c1.Id;
}