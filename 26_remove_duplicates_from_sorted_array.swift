func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    if nums.count == 1 {
        return 1
    }
    var start = 0
    var end = 1
    var n = 1
    while end < nums.count {
        while end < nums.count && nums[start] == nums[end] {
            end += 1
            if end >= nums.count {
                return n
            }
        }
        start += 1
        nums[n] = nums[end]
        start = end
        end += 1
        n += 1
    }
    return n
}
