public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
 Integer totalCond = 0;
 if (passedExam) totalCond++;
 if (passedAssignments) totalCond++;
 if (passedProject) totalCond++;
 return totalCond >= 2;
}