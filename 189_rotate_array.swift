func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    if n < 2 {
        return
    }
    let kk = k % n
    reverse(&nums, 0, n - 1)
    reverse(&nums, 0, kk - 1)
    reverse(&nums, kk, n - 1)
}

func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
    var s = start
    var e = end
    while s < e {
        let temp = nums[s]
        nums[s] = nums[e]
        nums[e] = temp
        s += 1
        e -= 1
    }
}
