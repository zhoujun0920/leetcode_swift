/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func printTree(_ root: TreeNode?) -> [[String]] {
        var result = [[String]]()
        if let root = root {
            var queue = [TreeNode?]()
            var indexQueue = [Int]()
            queue.append(root)
            indexQueue.append(0)
            while !queue.isEmpty {
                var currentQueue = [TreeNode?]()
                var currentIndexQueue = [Int]()
                var tempCurrentResult = [(String, Int)]()
                var hasNode = false
                while !queue.isEmpty {
                    let index = indexQueue.removeFirst()
                    if let temp = queue.removeFirst() {
                        tempCurrentResult.append(("\(temp.val)", index))
                        if let left = temp.left {
                            hasNode = true
                            currentQueue.append(left)
                        } else {
                            currentQueue.append(nil)
                        }
                        currentIndexQueue.append(index - 1)
                        if let right = temp.right {
                            hasNode = true
                            currentQueue.append(right)
                        } else {
                            currentQueue.append(nil)
                        }
                        currentIndexQueue.append(index + 1)
                    } else {
                        tempCurrentResult.append(("", index))
                        currentQueue.append(nil)
                        currentIndexQueue.append(index - 1)
                        currentQueue.append(nil)
                        currentIndexQueue.append(index + 1)
                    }
                }
                tempCurrentResult.sort {
                    (i, j) -> Bool in
                    return i.1 < j.1
                }
                let tempResult = tempCurrentResult.map {
                    (i) -> String in
                    return i.0
                }
                result.append(tempResult)
                if hasNode {
                    queue.append(contentsOf: currentQueue)
                    indexQueue.append(contentsOf: currentIndexQueue)
                }
            }
        }
        return result
    }
}
