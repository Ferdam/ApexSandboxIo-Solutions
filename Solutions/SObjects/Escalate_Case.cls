public void escalateIfMeetsCriteria(Case c) {
 if (c.IsEscalated) return;
 Boolean needsEscalation = false;
 needsEscalation = (c.Type == 'Mechanical' || c.Type == 'Electrical')
 && c.Reason == 'Breakdown'
 && c.Status == 'In Progress';
 c.IsEscalated = needsEscalation;
}