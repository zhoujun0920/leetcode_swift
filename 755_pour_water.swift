func pourWater(heights: [Int], V: Int, K: Int) -> [Int] {
  var result = heights
  while V > 0 {
    var i = K
    while i > 0 && heights[i - 1] >= heights[i]{
      i--
    }
    while i < heights.count - 1 && heights[i] >= heights[i + 1] {
      i++
    }
    while i > K {
      i--
    }
    heights[i]++
    V--
  }
  return heights
}
