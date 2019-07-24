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

    var queue: [Int] = [Int]()

    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        help(root)
        if queue.count < 2 {
            return -1
        }
        queue.sort()
        for i in (1..<queue.count) {
            if queue[i] != queue[i - 1] {
                return queue[i]
            }
        }
        return -1
    }

    func help(_ root: TreeNode?) {
        if root == nil {
            return
        }
        queue.append(root!.val)
        help(root!.left)
        help(root!.right)
    }
}
