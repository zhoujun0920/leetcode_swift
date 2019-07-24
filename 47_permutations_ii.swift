class Solution {
      var total: [[Int]] = [[Int]]()

    func permuteUnique(_ nums: [Int]) -> [[Int]] {
       var temp = [Int]()
        var visited = Array(repeating: false, count: nums.count)
        var sortedNums = nums.sorted()
        help(sortedNums, -1, temp, &visited)
        return total
    }

    func help(_ nums: [Int], _ index: Int, _ result: [Int], _ visited: inout [Bool]) {
        if result.count == nums.count {
            total.append(result)
            return
        }
        for i in (0..<nums.count) {
            if visited[i] {
                continue
            }
            if i > 0 && nums[i - 1] == nums[i] && !visited[i - 1] {
                continue
            }
            if !visited[i] {
                var temp = [Int](result)
                temp.append(nums[i])
                visited[i] = true
                help(nums, i, temp, &visited)
                visited[i] = false
            }
        }
    }
}
