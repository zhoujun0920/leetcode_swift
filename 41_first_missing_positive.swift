// space complexity is O(n)
func firstMissingPositive(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 1
    }
    var dict = [Int: Int]()
    for i in (0..<nums.count) {
        dict[nums[i]] = 1
    }
    for i in (1...(nums.count + 1)) {
        if dict[i] == nil {
            return i
        }
    }
    return -1
}

// space complexity is O(1)
func firstMissingPositive(_ nums: [Int]) -> Int {
  if nums.count == 0 {
    return 1
  }
  for i in (0..<nums.count) {
    let position = nums[i]
    if position > 0 && nums[position] > 0 {
      nums[position] = -nums[position]
    }
  }
  for i in (0..<nums.count) {
    if nums[i] > 0 {
        return i
    }
  }
  return nums.count
}
