class Solution {

    var result: [[Int]] = [[Int]]()

    func getFactors(_ n: Int) -> [[Int]] {
        var data = [Int]()
        help(n, &data, 2)
        return result
    }

    func help(_ n: Int, _ data: inout [Int], _ start: Int) {
        if n <= 1 {
            if data.count > 1 {
                let temp = [Int](data)
                result.append(temp)
            }
            return
        }
        if start > n {
            return
        }
        for i in (start...n) {
            if n % i == 0 {
                data.append(i)
                help(n / i, &data, i)
                data.removeLast()
            }
        }
    }
}
