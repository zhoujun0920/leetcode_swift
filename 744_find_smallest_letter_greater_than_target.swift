class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var i = 0
        var j = letters.count - 1
        while i < j {
            var mid = i + (j - i) / 2
            if letters[mid] == target {
                while mid < letters.count - 1 && letters[mid] == letters[mid + 1] {
                    mid += 1
                }
                if mid == letters.count - 1 {
                    return letters[0]
                }
                return letters[mid + 1]
            } else if letters[mid] < target {
                i = mid + 1
            } else {
                j = mid - 1
            }
        }
        if letters[i] > target {
            return letters[i]
        } else {
            while i < letters.count - 1 && letters[i] == letters[i + 1] {
                    i += 1
                }
            if i == letters.count - 1 {
                return letters[0]
            }
            return letters[i + 1]
        }
    }
}
