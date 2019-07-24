class Solution {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        let sum = nums.reduce(0) {
            (total, i) -> Int in
            total + i
        }
        if sum % k != 0 {
            return false
        }
        let target = sum / k
        let sortedNums = nums.sorted()
        var n = nums.count - 1
        if sortedNums[n] > target {
            return false
        }
        var kk = k
        while n >= 0 && nums[n] == target {
            n -= 1
            kk -= 1
        }
        var groups = Array(repeating: 0, count: kk)
        return help(&groups, nums, n, target)
    }

    func help(_ groups: inout [Int], _ nums:[Int], _ n: Int, _ target: Int) -> Bool {
        if n < 0 {
            return true
        }
        let v = nums[n]
        for i in (0..<groups.count) {
            if groups[i] + v <= target {
                groups[i] += v

                if (help(&groups, nums, n - 1, target)) {
                    return true
                }
                groups[i] -= v
            }
            if groups[i] == 0 {
                break
            }
        }
        return false
    }
}
