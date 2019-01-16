int findCelebrity(int n) {
  int max = 0;
  for (int i = 1; i < n; i++) {
    if (knows(max, i)) {
      max = i;
    }
  }
  for (int i = 0; i < n; i++) {
    if ((max != i) && (!knows(i, max) || knows(max, i))) {
      return -1;
    }
  }
  return max;
}
