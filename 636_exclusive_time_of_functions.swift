class Solution {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {

        var time = Array(repeating: 0, count: n)
        var stack = [Int]()
        let first = logs[0].split(separator: ":")
        stack.append(Int(first[0])!)
        var prev = Int(first[2])!
        var i = 1
        while i < logs.count {
            let temp = logs[i].split(separator: ":")
            if temp[1] == "start" {
                if let before = stack.last {
                    time[before] += Int(temp[2])! - prev
                }
                stack.append(Int(temp[0])!)
                prev = Int(temp[2])!
            } else {
                if let before = stack.last {
                    time[before] += Int(temp[2])! - prev + 1
                    stack.removeLast()
                    prev = Int(temp[2])! + 1
                }
            }
            i += 1
        }
        return time
    }
}
