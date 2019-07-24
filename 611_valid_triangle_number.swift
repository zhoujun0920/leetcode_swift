class Solution {

    func triangleNumber(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0
        }
        var count = 0
        let sortedNums = nums.sorted()
        for i in (0..<(sortedNums.count - 2)) {
            var k = i + 2
            if sortedNums[i] != 0 {
                for j in ((i + 1)..<(nums.count - 1)) {
                    while k < nums.count && sortedNums[i] + sortedNums[j] > sortedNums[k] {
                        k += 1
                    }
                    count += (k - j - 1)
                }
            }
        }
        return count;
    }

}

class Solution {

  var result = 0

  func triangleNumber(_ nums: [Int]) -> Int {
    var data = Array(repeating: 0, count: 3)
    help(nums, &data, 0, 0)
  }

  func help(_ nums: [Int], _ data: inout [Int], _ index: Int, _ i: Int) {
    if index == 3 {
      if isValid() {
        count += 1
      }
      return
    }
    data[index] = nums[i]
    help(nums, &data, index + 1, i + 1)
    help(nums, &data, index, i + 1)
  }

  func isValid() -> Bool {

  }
}
