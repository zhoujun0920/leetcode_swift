class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        var i = 0
        while i * i <= c {
            let b = c - i * i
            if help(b) {
                return true
            }
            i += 1
        }
        return false
    }

    func help(_ b: Int) -> Bool {
        var i = 0
        var j = b
        while (i <= j) {
            let mid = i + (j - i) / 2
            if mid * mid == b {
                return true
            }
            if mid * mid > b {
                j = mid - 1
            } else {
                i = mid + 1
            }
        }
        return false
    }
}
