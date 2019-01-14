func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var n = nums.count
    if nums.count == 0 {
        return n
    }
    var start = 0
    var end = nums.count - 1
    while start <= end {
        while start <= end && nums[start] != val {
            start += 1
        }
        while start <= end && nums[end] == val {
            end -= 1
            n -= 1
        }
        if start < end {
            let temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp

        }
    }
    return n
}
